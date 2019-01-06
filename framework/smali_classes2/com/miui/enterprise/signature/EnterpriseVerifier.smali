.class public Lcom/miui/enterprise/signature/EnterpriseVerifier;
.super Ljava/lang/Object;
.source "EnterpriseVerifier.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final ENTERPRISE_CER_ENTRY:Ljava/lang/String; = "entcert"

.field private static final ENTERPRISE_CER_FILE:Ljava/lang/String; = "META-INF/ENTERPRISE.CER"

.field private static final ENT_PUBLIC_KEY:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

.field private static final HEX_DIGITS:[C

.field private static final MIUI_SIGNATURE:Ljava/lang/String; = "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

.field private static final TAG:Ljava/lang/String; = "EnterpriseVerifier"

.field private static final TEMP_FILE:Ljava/lang/String; = "/data/system/ent_temp"

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "META-INF/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_32
    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_66

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    const/4 v4, 0x0

    :try_start_44
    invoke-virtual {p0, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    if-nez v0, :cond_59

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_5f

    move-result-object v0

    :cond_59
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_37

    :catchall_5f
    move-exception v8

    if-eqz v4, :cond_65

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_65
    throw v8

    :cond_66
    if-eqz v0, :cond_6b

    array-length v9, v0

    if-nez v9, :cond_6c

    :cond_6b
    :goto_6b
    return-object v8

    :cond_6c
    aget-object v8, v0, v10

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_6b
.end method

.method private static deleteTempFileIfExist()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/system/ent_temp"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_13
    const-string/jumbo v2, "EnterpriseVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete temp file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "SHA256withRSA"

    return-object v1

    :cond_1b
    const-string/jumbo v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string/jumbo v1, "SHA256withECDSA"

    return-object v1

    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v3, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_f

    const/16 v3, 0x1000

    new-array v0, v3, [B

    :cond_f
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_11
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    add-int/2addr v1, v2

    goto :goto_11

    :cond_1c
    sget-object v3, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    int-to-long v4, v1

    return-wide v4
.end method

.method private static readPublicKey()Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "-----BEGIN CERTIFICATE-----\nMIIDXzCCAkegAwIBAgIEMgLUEDANBgkqhkiG9w0BAQsFADBgMQswCQYDVQQGEwI4\nNjEPMA0GA1UECBMGQmVpSmluMQ8wDQYDVQQHEwZCZWlKaW4xDzANBgNVBAoTBlhp\nYW9NaTENMAsGA1UECxMETUlVSTEPMA0GA1UEAxMGWGlhb01pMB4XDTE4MDIwNTEw\nNTUwM1oXDTQ4MDEyOTEwNTUwM1owYDELMAkGA1UEBhMCODYxDzANBgNVBAgTBkJl\naUppbjEPMA0GA1UEBxMGQmVpSmluMQ8wDQYDVQQKEwZYaWFvTWkxDTALBgNVBAsT\nBE1JVUkxDzANBgNVBAMTBlhpYW9NaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBALE5VJgm5U7lzuEdK69+PXmjw43IwkOPKcZH5ygySuf1X9NJq1YteOoo\nSAYP1sOIr3gg/FauQSlFxmM1VPCXE3uLvDC9ko/vJtpzgfqD/tM/mZQmlFVlWFNW\n9+64Ri/15tO5La1oXW2ccsp0thYmVNDEQtJw/HK5G26l2PSMdGxcgZUAv61dFhbq\n9aAm9ZtvVxUJdlw9xOBE+N+fTxnteM60cY9lPsOXdloHuSo93FF/WlS+7NfyO0h1\n3zWD54OkYsLNBnefynuay33fxFqEK/OqpAHkolIRhxhy256RzoS5tC8aWBdvqZTQ\n6GEmxg3/tkK6dM40L5pFsPV6eJeEnj8CAwEAAaMhMB8wHQYDVR0OBBYEFNNMGSE0\nbeZUEt2r7beFWvvvfBoSMA0GCSqGSIb3DQEBCwUAA4IBAQBfRf59v1HFwPtjzRGA\nYjoR4Z8QdQ8Gu7fJMlm3MOaBPiVh/rTp5/PtDAAUyDjUZFUOTngmAIDk768FDNkY\nfBTn0RCZVI96FsdcA9dhCeCadnr7I6kpHX1LeqXkkVsrviV8vnqXcBIk29qu/M0s\ncBZy1SBP3YlN5ZOQXipWCdU7hNt4QdAYfeOZ8/A/DHZUmZsbPP+gq3I1u8rV1e5q\nPmF46bmuOXe4eXmqBiWNmJyGDOpP0YiT4N57kJOM2aiNWNGXMod4/896rDXUoCuM\n5xIsDV64/DorjbF4dZta94Q6KnE6JRWFl/i4ol7218EVA3ScHLRISDruJanMpU5V\nF3nx\n-----END CERTIFICATE-----"

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_f
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_20

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v2

    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    throw v2
.end method

.method private static sha256([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->toHexReadable([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toHexReadable([B)Ljava/lang/String;
    .registers 10

    const/4 v5, 0x0

    if-nez p0, :cond_7

    const-string/jumbo v5, ""

    return-object v5

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, p0

    :goto_d
    if-ge v5, v6, :cond_2c

    aget-byte v0, p0, v5

    move v3, v0

    if-gez v3, :cond_16

    add-int/lit16 v3, v3, 0x100

    :cond_16
    shr-int/lit8 v1, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    sget-object v7, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    aget-char v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/miui/enterprise/signature/EnterpriseVerifier;->HEX_DIGITS:[C

    aget-char v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static verify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24

    const/4 v9, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v10, Ljava/util/jar/JarFile;

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_283
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_16} :catch_283
    .catchall {:try_start_2 .. :try_end_16} :catchall_2b5

    :try_start_16
    const-string/jumbo v17, "META-INF/ENTERPRISE.CER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    if-nez v17, :cond_3a

    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, no enterprise cert found"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2a} :catch_2d0
    .catch Ljava/security/GeneralSecurityException; {:try_start_16 .. :try_end_2a} :catch_2d0
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2c9

    const/16 v17, 0x0

    if-eqz v10, :cond_31

    :try_start_2e
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_31
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_35

    :goto_34
    return v17

    :catch_35
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    :cond_3a
    :try_start_3a
    const-string/jumbo v17, "META-INF/ENTERPRISE.CER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    const-string/jumbo v18, "/data/system/ent_temp"

    invoke-static/range {v17 .. v18}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Ljava/util/jar/JarFile;

    const-string/jumbo v17, "/data/system/ent_temp"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_5d} :catch_2d0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3a .. :try_end_5d} :catch_2d0
    .catchall {:try_start_3a .. :try_end_5d} :catchall_2c9

    :try_start_5d
    invoke-static {v4}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_69

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_87

    :cond_69
    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, failed to load enterprise cert signature"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_72} :catch_2d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_5d .. :try_end_72} :catch_2d3
    .catchall {:try_start_5d .. :try_end_72} :catchall_2cc

    const/16 v17, 0x0

    if-eqz v10, :cond_79

    :try_start_76
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_79
    if-eqz v4, :cond_7e

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_7e
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_82

    :goto_81
    return v17

    :catch_82
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    :cond_87
    :try_start_87
    const-string/jumbo v17, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b0

    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, miss match signature"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_9b} :catch_2d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_87 .. :try_end_9b} :catch_2d3
    .catchall {:try_start_87 .. :try_end_9b} :catchall_2cc

    const/16 v17, 0x0

    if-eqz v10, :cond_a2

    :try_start_9f
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_a2
    if-eqz v4, :cond_a7

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_a7
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_aa} :catch_ab

    :goto_aa
    return v17

    :catch_ab
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa

    :cond_b0
    :try_start_b0
    new-instance v8, Lcom/miui/enterprise/signature/EnterpriseCer;

    const-string/jumbo v17, "entcert"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Ljava/io/InputStream;)V

    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v15

    invoke-virtual {v8}, Lcom/miui/enterprise/signature/EnterpriseCer;->getUnSignedRaw()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->readPublicKey()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->getSignatureAlgorithm(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v14

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v14, v15}, Ljava/security/Signature;->verify([B)Z

    move-result v17

    if-eqz v17, :cond_232

    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Verify signature success for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v17

    if-nez v17, :cond_13d

    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed,  cert out of date"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_128} :catch_2d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_b0 .. :try_end_128} :catch_2d3
    .catchall {:try_start_b0 .. :try_end_128} :catchall_2cc

    const/16 v17, 0x0

    if-eqz v10, :cond_12f

    :try_start_12c
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_12f
    if-eqz v4, :cond_134

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_134
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_137} :catch_138

    :goto_137
    return v17

    :catch_138
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_137

    :cond_13d
    :try_start_13d
    invoke-static {v10, v8}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z

    move-result v17

    if-nez v17, :cond_161

    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, miss match apk/device"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_14c} :catch_2d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_13d .. :try_end_14c} :catch_2d3
    .catchall {:try_start_13d .. :try_end_14c} :catchall_2cc

    const/16 v17, 0x0

    if-eqz v10, :cond_153

    :try_start_150
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_153
    if-eqz v4, :cond_158

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_158
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_15b} :catch_15c

    :goto_15b
    return v17

    :catch_15c
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15b

    :cond_161
    :try_start_161
    const-string/jumbo v17, "enterprise_licence"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_203

    const-string/jumbo v17, "enterprise_agency"

    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "enterprise_licence"

    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "enterprise_package"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19e
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v17, "com.miui.enterprise.ACTION_CERT_UPDATE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x1a

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1b9

    const/high16 v17, 0x1000000

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1b9
    const-string/jumbo v17, "extra_ent_cert"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v18, "com.miui.enterprise.permission.ACTIVE_ENTERPRISE_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v17, Ljava/io/BufferedInputStream;

    new-instance v18, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v18, "/data/system/entcert"

    invoke-static/range {v17 .. v18}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "persist cert file"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_1f3} :catch_2d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_161 .. :try_end_1f3} :catch_2d3
    .catchall {:try_start_161 .. :try_end_1f3} :catchall_2cc

    const/16 v17, 0x1

    if-eqz v10, :cond_1fa

    :try_start_1f7
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_1fa
    if-eqz v4, :cond_1ff

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_1ff
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_202
    .catch Ljava/io/IOException; {:try_start_1f7 .. :try_end_202} :catch_22d

    :goto_202
    return v17

    :cond_203
    :try_start_203
    iget-object v0, v8, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_19e

    const-string/jumbo v17, "EnterpriseVerifier"

    const-string/jumbo v18, "Verify failed, miss match licence code"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_218} :catch_2d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_203 .. :try_end_218} :catch_2d3
    .catchall {:try_start_203 .. :try_end_218} :catchall_2cc

    const/16 v17, 0x0

    if-eqz v10, :cond_21f

    :try_start_21c
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_21f
    if-eqz v4, :cond_224

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_224
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_227
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_227} :catch_228

    :goto_227
    return v17

    :catch_228
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_227

    :catch_22d
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_202

    :cond_232
    :try_start_232
    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Verify signature failed for package: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Cert: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lcom/miui/enterprise/signature/EnterpriseCer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26e
    .catch Ljava/io/IOException; {:try_start_232 .. :try_end_26e} :catch_2d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_232 .. :try_end_26e} :catch_2d3
    .catchall {:try_start_232 .. :try_end_26e} :catchall_2cc

    const/16 v17, 0x0

    if-eqz v10, :cond_275

    :try_start_272
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_275
    if-eqz v4, :cond_27a

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_27a
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_27d
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_27d} :catch_27e

    :goto_27d
    return v17

    :catch_27e
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27d

    :catch_283
    move-exception v7

    :goto_284
    :try_start_284
    const-string/jumbo v17, "EnterpriseVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Verify failed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a0
    .catchall {:try_start_284 .. :try_end_2a0} :catchall_2b5

    const/16 v17, 0x0

    if-eqz v9, :cond_2a7

    :try_start_2a4
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V

    :cond_2a7
    if-eqz v3, :cond_2ac

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_2ac
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2a4 .. :try_end_2af} :catch_2b0

    :goto_2af
    return v17

    :catch_2b0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2af

    :catchall_2b5
    move-exception v17

    :goto_2b6
    if-eqz v9, :cond_2bb

    :try_start_2b8
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V

    :cond_2bb
    if-eqz v3, :cond_2c0

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_2c0
    invoke-static {}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->deleteTempFileIfExist()V
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2c3} :catch_2c4

    :goto_2c3
    throw v17

    :catch_2c4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c3

    :catchall_2c9
    move-exception v17

    move-object v9, v10

    goto :goto_2b6

    :catchall_2cc
    move-exception v17

    move-object v3, v4

    move-object v9, v10

    goto :goto_2b6

    :catch_2d0
    move-exception v7

    move-object v9, v10

    goto :goto_284

    :catch_2d3
    move-exception v7

    move-object v3, v4

    move-object v9, v10

    goto :goto_284
.end method

.method private static verifyApk(Ljava/util/jar/JarFile;Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-eqz v6, :cond_2c

    iget-object v6, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_2c

    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    iget-object v6, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    array-length v7, v6

    :goto_12
    if-ge v5, v7, :cond_1d

    aget-object v0, v6, v5

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v1, 0x1

    :cond_1d
    if-nez v1, :cond_28

    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Verify failed, device not authorized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return v1

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_2c
    const-string/jumbo v5, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v5}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v2, v5, [B

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4d

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Failed to read META-INF/MANIFEST.MF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4d
    iget-object v5, p1, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->sha256([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    return v5
.end method

.method private static verifyDate(Lcom/miui/enterprise/signature/EnterpriseCer;)Z
    .registers 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidTo()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public static verifyPlatformSign(Ljava/lang/String;)Z
    .registers 9

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/util/jar/JarFile;

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_8} :catch_46
    .catchall {:try_start_2 .. :try_end_8} :catchall_61

    :try_start_8
    invoke-static {v1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->collectSignature(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2e

    :cond_14
    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Verify failed, failed to load enterprise cert signature"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1d} :catch_76
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_1d} :catch_76
    .catchall {:try_start_8 .. :try_end_1d} :catchall_73

    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return v7

    :catch_23
    move-exception v2

    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Failed to close jar"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_2e
    :try_start_2e
    const-string/jumbo v5, "3082046c30820354a0030201020209008d64f55b5ca4ef25300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323733305a170d3339303432333033323733305a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100cfb201f02792657970678db7ae5476d6050534be0c0f308370f0b0f8f08ed8f62a39f804ac4e9dd6262759f2545abcc7aa04fa0226d0029bacab42a970806023bd740c73fad30c56b286037eb1663e79f6c4196ed04d41c92c125d130c29d801a1db681af2d89de2d46e7af218385580186eaf7b68d789574e826cc1762190d70aac565b94cf7812d7a90b7d045f3da952a9c585cf437ced4857675c859d3808a882fec9401dc6ce05140e94c918e381223aa69f7df2ded90767505cbfb1c0a8371e9886b56e85925fafccf312aeea6a892e55fda66957f0dd245e6541e188bd0388d880478557591f16a2e2fdf01b83c6d75298f2e27bf3eb0c12ab7ccac68b020103a381e83081e5301d0603551d0e041604142438de5c93ae19065adbdcb82033744bd89d25663081b50603551d230481ad3081aa80142438de5c93ae19065adbdcb82033744bd89d2566a18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d8209008d64f55b5ca4ef25300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100ccdf3afa17e8aa4abbf30cd193853ed324ba06a18af56b6aee1b2f96f16bf426406b851d76dc4b1d2f150590e6013fc64d7440f400b59af6b225ae6bd3409b0dec19331365077612e6298dd2323ae0bdb14c774df3e9cc3502841204f248d32971fc4d4b9fb98e830f95f71f5f4b31f94f33a4ac2b1ef5eeb1ecb78a71f5333a7f003c454f4bf4e633626ce330f48df62a9396324da15e676a29d8f563408b7822abf25d2d372f91e43f4dccb17ba8a248b475b71c936755efe1387e2d0511c13f85eed4d12bae3d004ae631c963f9fbf4fc1319f0ffa7de2af9f02f00dec902eb88be20e7ce3d9d3392f338adb8d79392318e057f3110c173af20d5ed1094d6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_76
    .catch Ljava/security/cert/CertificateException; {:try_start_2e .. :try_end_34} :catch_76
    .catchall {:try_start_2e .. :try_end_34} :catchall_73

    move-result v5

    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return v5

    :catch_3b
    move-exception v2

    const-string/jumbo v6, "EnterpriseVerifier"

    const-string/jumbo v7, "Failed to close jar"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catch_46
    move-exception v3

    :goto_47
    :try_start_47
    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Verify failed"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_61

    if-eqz v0, :cond_55

    :try_start_52
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    return v7

    :catch_56
    move-exception v2

    const-string/jumbo v5, "EnterpriseVerifier"

    const-string/jumbo v6, "Failed to close jar"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catchall_61
    move-exception v5

    :goto_62
    if-eqz v0, :cond_67

    :try_start_64
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    :cond_67
    :goto_67
    throw v5

    :catch_68
    move-exception v2

    const-string/jumbo v6, "EnterpriseVerifier"

    const-string/jumbo v7, "Failed to close jar"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :catchall_73
    move-exception v5

    move-object v0, v1

    goto :goto_62

    :catch_76
    move-exception v3

    move-object v0, v1

    goto :goto_47
.end method

.method private static writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_31

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Filed to create temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_31
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    new-array v0, v4, [B

    :goto_3f
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4b

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3f

    :cond_4b
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    return-void
.end method

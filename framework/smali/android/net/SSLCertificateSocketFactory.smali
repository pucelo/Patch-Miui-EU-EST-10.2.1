.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SSLCertificateSocketFactory$1;
    }
.end annotation


# static fields
.field private static final INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

.field private static final TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private mAlpnProtocols:[B

.field private mChannelIdPrivateKey:Ljava/security/PrivateKey;

.field private final mHandshakeTimeoutMillis:I

.field private mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private mNpnProtocols:[B

.field private final mSecure:Z

.field private mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v1}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-void
.end method

.method private constructor <init>(ILandroid/net/SSLSessionCache;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    if-nez p2, :cond_1b

    :goto_16
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    return-void

    :cond_1b
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    goto :goto_16
.end method

.method private static castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .registers 4

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Socket not created by this factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    return-object p0
.end method

.method public static getDefault(I)Ljavax/net/SocketFactory;
    .registers 4

    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private declared-synchronized getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_b
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "SSLCertificateSocketFactory"

    const-string/jumbo v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    :cond_26
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_34

    monitor-exit p0

    return-object v0

    :cond_2a
    :try_start_2a
    const-string/jumbo v0, "SSLCertificateSocketFactory"

    const-string/jumbo v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_1c

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    :try_start_37
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    :cond_45
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_34

    monitor-exit p0

    return-object v0
.end method

.method public static getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private static isSslCheckRelaxed()Z
    .registers 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "socket.relaxsslcheck"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_c
    return v0
.end method

.method private makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->newPreferredSSLContextSpi()Ljavax/net/ssl/SSLContextSpi;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v2

    iget-object v3, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_16
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v2

    return-object v2

    :catch_18
    move-exception v0

    const-string/jumbo v2, "SSLCertificateSocketFactory"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    return-object v2
.end method

.method static varargs toLengthPrefixedList([[B)[B
    .registers 12

    const/4 v7, 0x0

    array-length v6, p0

    if-nez v6, :cond_d

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "items.length == 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    const/4 v5, 0x0

    array-length v8, p0

    move v6, v7

    :goto_10
    if-ge v6, v8, :cond_3e

    aget-object v4, p0, v6

    array-length v9, v4

    if-eqz v9, :cond_1c

    array-length v9, v4

    const/16 v10, 0xff

    if-le v9, v10, :cond_37

    :cond_1c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "s.length == 0 || s.length > 255: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_37
    array-length v9, v4

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_3e
    new-array v3, v5, [B

    const/4 v1, 0x0

    array-length v9, p0

    move v8, v7

    move v2, v1

    :goto_44
    if-ge v8, v9, :cond_61

    aget-object v4, p0, v8

    add-int/lit8 v1, v2, 0x1

    array-length v6, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    array-length v10, v4

    move v6, v7

    move v2, v1

    :goto_51
    if-ge v6, v10, :cond_5d

    aget-byte v0, v4, v6

    add-int/lit8 v1, v2, 0x1

    aput-byte v0, v3, v2

    add-int/lit8 v6, v6, 0x1

    move v2, v1

    goto :goto_51

    :cond_5d
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_44

    :cond_61
    return-object v3
.end method

.method public static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v2, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Attempt to verify non-SSL socket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v2

    if-nez v2, :cond_4c

    move-object v1, p0

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_4c

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot verify hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4c
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_25

    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_25
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_25

    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_25
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_25

    invoke-static {v0, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_25
    return-object v0
.end method

.method public getAlpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 3

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 3

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlpnProtocols([[B)V
    .registers 3

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 2

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setNpnProtocols([[B)V
    .registers 3

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    return-void
.end method

.method public setSoWriteTimeout(Ljava/net/Socket;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .registers 3

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setUseSessionTickets(Ljava/net/Socket;Z)V
    .registers 4

    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    return-void
.end method

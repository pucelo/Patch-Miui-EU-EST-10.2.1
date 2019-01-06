.class public Landroid/net/http/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source "X509TrustManagerExtensions.java"


# instance fields
.field private final mCheckServerTrusted:Ljava/lang/reflect/Method;

.field private final mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private final mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

.field private final mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v3, p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v3, :cond_13

    check-cast p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    return-void

    :cond_13
    iput-object v4, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    :try_start_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_36} :catch_52

    const/4 v2, 0x0

    :try_start_37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "isSameTrustConfiguration"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_37 .. :try_end_4e} :catch_5c

    move-result-object v2

    :goto_4f
    iput-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    return-void

    :catch_52
    move-exception v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Required method checkServerTrusted(X509Certificate[], String, String, String) missing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_5c
    move-exception v1

    goto :goto_4f
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_21} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_21} :catch_22

    return-object v2

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertificateException;

    throw v2

    :cond_32
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_41

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_41
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "checkServerTrusted failed"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4e
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Failed to call checkServerTrusted"

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    return v3

    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_1c} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_1c} :catch_1e

    move-result v2

    return v2

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_2e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "isSameTrustConfiguration failed"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3b
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to call isSameTrustConfiguration"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3

    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/net/config/UserCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

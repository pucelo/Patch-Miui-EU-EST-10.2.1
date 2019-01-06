.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$AliasResponse;,
        Landroid/security/KeyChain$KeyChainConnection;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final ACTION_KEYCHAIN_CHANGED:Ljava/lang/String; = "android.security.action.KEYCHAIN_CHANGED"

.field public static final ACTION_KEY_ACCESS_CHANGED:Ljava/lang/String; = "android.security.action.KEY_ACCESS_CHANGED"

.field public static final ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field public static final ACTION_TRUST_STORE_CHANGED:Ljava/lang/String; = "android.security.action.TRUST_STORE_CHANGED"

.field private static final CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTRA_KEY_ACCESSIBLE:Ljava/lang/String; = "android.security.extra.KEY_ACCESSIBLE"

.field public static final EXTRA_KEY_ALIAS:Ljava/lang/String; = "android.security.extra.KEY_ALIAS"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v6, 0x1

    if-nez p0, :cond_c

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "context == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v2, Landroid/security/KeyChain$1;

    invoke-direct {v2, v3}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    new-instance v1, Landroid/content/Intent;

    const-class v4, Landroid/security/IKeyChainService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_3a

    invoke-virtual {p0, v1, v2, v6, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_43

    :cond_3a
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "could not bind to KeyChainService"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_43
    new-instance v5, Landroid/security/KeyChain$KeyChainConnection;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/IKeyChainService;

    invoke-direct {v5, p0, v2, v4}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    return-object v5
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "activity == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-nez p1, :cond_18

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "response == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "response"

    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$AliasResponse;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "alias"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    const/4 v4, 0x0

    if-eqz p4, :cond_38

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-eq p5, v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    :cond_38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_41
    const-string/jumbo v0, ""

    goto :goto_28
.end method

.method public static createInstallIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.certinstaller"

    const-string/jumbo v2, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v13, Ljava/lang/NullPointerException;

    const-string/jumbo v14, "alias == null"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_b
    const/4 v14, 0x0

    const/4 v9, 0x0

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1e} :catch_4b
    .catchall {:try_start_d .. :try_end_1e} :catchall_af

    move-result-object v2

    if-nez v2, :cond_34

    const/4 v13, 0x0

    if-eqz v9, :cond_27

    :try_start_24
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_42

    :cond_27
    :goto_27
    if-eqz v14, :cond_33

    :try_start_29
    throw v14
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2a} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2a} :catch_42

    :catch_2a
    move-exception v5

    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v5}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :catch_31
    move-exception v14

    goto :goto_27

    :cond_33
    return-object v13

    :cond_34
    :try_start_34
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/security/IKeyChainService;->getCaCertificates(Ljava/lang/String;)[B
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_4b
    .catchall {:try_start_34 .. :try_end_39} :catchall_af

    move-result-object v1

    if-eqz v9, :cond_3f

    :try_start_3c
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3f} :catch_42

    :cond_3f
    :goto_3f
    if-eqz v14, :cond_67

    :try_start_41
    throw v14
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_42} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_42} :catch_42

    :catch_42
    move-exception v7

    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v7}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :catch_49
    move-exception v14

    goto :goto_3f

    :catch_4b
    move-exception v13

    :try_start_4c
    throw v13
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v14

    move-object/from16 v16, v14

    move-object v14, v13

    move-object/from16 v13, v16

    :goto_53
    if-eqz v9, :cond_58

    :try_start_55
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_42

    :cond_58
    :goto_58
    if-eqz v14, :cond_66

    :try_start_5a
    throw v14

    :catch_5b
    move-exception v15

    if-nez v14, :cond_60

    move-object v14, v15

    goto :goto_58

    :cond_60
    if-eq v14, v15, :cond_58

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_58

    :cond_66
    throw v13
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_67} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_67} :catch_42

    :cond_67
    :try_start_67
    invoke-static {v2}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v11

    if-eqz v1, :cond_92

    array-length v13, v1

    if-eqz v13, :cond_92

    invoke-static {v1}, Landroid/security/KeyChain;->toCertificates([B)Ljava/util/Collection;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/security/cert/X509Certificate;

    return-object v13

    :cond_92
    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v12, v11}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/security/cert/X509Certificate;
    :try_end_a7
    .catch Ljava/security/cert/CertificateException; {:try_start_67 .. :try_end_a7} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_a7} :catch_a8

    return-object v13

    :catch_a8
    move-exception v6

    new-instance v13, Landroid/security/KeyChainException;

    invoke-direct {v13, v6}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :catchall_af
    move-exception v13

    goto :goto_53
.end method

.method public static getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_c

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "alias == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    if-nez p0, :cond_17

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "context == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_17
    const/4 v3, 0x0

    :try_start_18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_27} :catch_3a
    .catchall {:try_start_18 .. :try_end_27} :catchall_6f

    move-result-object v4

    if-eqz v3, :cond_2d

    :try_start_2a
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2d} :catch_48

    :cond_2d
    move-object v5, v6

    :goto_2e
    if-eqz v5, :cond_5b

    :try_start_30
    throw v5
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_31} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_31} :catch_48

    :catch_31
    move-exception v0

    new-instance v5, Landroid/security/KeyChainException;

    invoke-direct {v5, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_38
    move-exception v5

    goto :goto_2e

    :catch_3a
    move-exception v5

    :try_start_3b
    throw v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_40
    if-eqz v3, :cond_45

    :try_start_42
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_45} :catch_48

    :cond_45
    :goto_45
    if-eqz v6, :cond_5a

    :try_start_47
    throw v6
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_48} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_48} :catch_48

    :catch_48
    move-exception v2

    new-instance v5, Landroid/security/KeyChainException;

    invoke-direct {v5, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_4f
    move-exception v7

    if-nez v6, :cond_54

    move-object v6, v7

    goto :goto_45

    :cond_54
    if-eq v6, v7, :cond_45

    :try_start_56
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_45

    :cond_5a
    throw v5
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5b} :catch_48

    :cond_5b
    if-nez v4, :cond_5e

    return-object v6

    :cond_5e
    :try_start_5e
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v4, v6}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_66} :catch_68
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5e .. :try_end_66} :catch_68

    move-result-object v5

    return-object v5

    :catch_68
    move-exception v1

    new-instance v5, Landroid/security/KeyChainException;

    invoke-direct {v5, v1}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catchall_6f
    move-exception v5

    goto :goto_40
.end method

.method public static isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/security/KeyChain;->isKeyAlgorithmSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .registers 3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public static toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 6

    if-nez p0, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "bytes == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    :try_start_b
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1d
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static toCertificates([B)Ljava/util/Collection;
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

    if-nez p0, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bytes == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    :try_start_b
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_1a} :catch_1c

    move-result-object v2

    return-object v2

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

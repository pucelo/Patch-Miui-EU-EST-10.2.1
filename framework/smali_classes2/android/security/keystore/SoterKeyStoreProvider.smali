.class public Landroid/security/keystore/SoterKeyStoreProvider;
.super Ljava/security/Provider;
.source "SoterKeyStoreProvider.java"


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"

.field private static final DEVICE_TYPE_NEW:I = 0x2

.field private static final DEVICE_TYPE_SAME:I = 0x3

.field private static final DEVICE_TYPE_STOCK:I = 0x1

.field public static final PROVIDER_NAME:Ljava/lang/String; = "SoterKeyStore"

.field private static final SOTER_PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string/jumbo v0, "SoterKeyStore"

    const-string/jumbo v1, "provider for soter"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string/jumbo v0, "KeyPairGenerator.RSA"

    const-string/jumbo v1, "android.security.keystore.SoterKeyStoreKeyPairRSAGeneratorSpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/SoterKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyStore.SoterKeyStore"

    const-string/jumbo v1, "android.security.keystore.SoterKeyStoreSpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/SoterKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA"

    invoke-direct {p0, v0}, Landroid/security/keystore/SoterKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    return-void
.end method

.method public static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .registers 6

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/ECKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;ILjava/security/spec/ECParameterSpec;)V

    return-object v1

    :cond_1e
    const-string/jumbo v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/RSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-object v1

    :cond_37
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .registers 13

    const/4 v9, -0x1

    :try_start_1
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    const-string/jumbo v7, "pub_key"

    invoke-static {p2, v7}, Landroid/security/keystore/SoterUtil;->getDataFromRaw([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_31

    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_16} :catch_3a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_16} :catch_66
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_16} :catch_5c

    move-result-object v4

    const-string/jumbo v7, "EC"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "AndroidKeyStoreECPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v7, p0, v9, v4}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V

    return-object v7

    :cond_31
    :try_start_31
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "invalid soter public key"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_3a} :catch_3a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_31 .. :try_end_3a} :catch_66
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3a} :catch_5c

    :catch_3a
    move-exception v0

    new-instance v7, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to obtain "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KeyFactory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_5c
    move-exception v2

    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Not in json format"

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_66
    move-exception v1

    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Invalid X.509 encoding of public key"

    invoke-direct {v7, v8, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_70
    const-string/jumbo v7, "RSA"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b

    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "AndroidKeyStoreRSAPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    new-instance v7, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    invoke-direct {v7, p0, v9, v6}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/RSAPublicKey;)V

    return-object v7

    :cond_8b
    new-instance v7, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static getJsonPublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .registers 16

    const/4 v2, -0x1

    :try_start_1
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    const-string/jumbo v0, "pub_key"

    invoke-static {p2, v0}, Landroid/security/keystore/SoterUtil;->getDataFromRaw([BLjava/lang/String;)[B

    move-result-object v11

    if-eqz v11, :cond_31

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v9, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_16} :catch_3a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_16} :catch_66
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_16} :catch_5c

    move-result-object v10

    const-string/jumbo v0, "EC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string/jumbo v0, "Soter"

    const-string/jumbo v1, "AndroidKeyStoreECPublicKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v10, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v0, p0, v2, v10}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V

    return-object v0

    :cond_31
    :try_start_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid soter public key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_3a} :catch_3a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_31 .. :try_end_3a} :catch_66
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3a} :catch_5c

    :catch_3a
    move-exception v6

    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to obtain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " KeyFactory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_5c
    move-exception v8

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Not in json format"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_66
    move-exception v7

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Invalid X.509 encoding of public key"

    invoke-direct {v0, v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_70
    const-string/jumbo v0, "RSA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string/jumbo v0, "Soter"

    const-string/jumbo v1, "getJsonPublicKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v10

    check-cast v12, Ljava/security/interfaces/RSAPublicKey;

    new-instance v0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    invoke-interface {v12}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v12}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;I[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_95
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static install()V
    .registers 6

    const/4 v5, 0x0

    const-string/jumbo v3, "type_soter_finger_pay"

    invoke-static {v3, v5}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_57

    const-string/jumbo v3, "persist.vendor.sys.pay.soter"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "persist.vendor.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    const-string/jumbo v3, "Soter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SoterKeyStoreProvider install, type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " fpVendor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_90

    :cond_56
    :goto_56
    return-void

    :cond_57
    const-string/jumbo v3, "persist.sys.pay.soter"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "persist.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :pswitch_69
    const/4 v3, 0x1

    if-ne v3, v1, :cond_56

    new-instance v3, Landroid/security/keystore/SoterKeyStoreProvider;

    invoke-direct {v3}, Landroid/security/keystore/SoterKeyStoreProvider;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_56

    :pswitch_75
    new-instance v3, Landroid/security/keystore/SoterKeyStoreProvider;

    invoke-direct {v3}, Landroid/security/keystore/SoterKeyStoreProvider;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_56

    :pswitch_7e
    const-string/jumbo v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    new-instance v3, Landroid/security/keystore/SoterKeyStoreProvider;

    invoke-direct {v3}, Landroid/security/keystore/SoterKeyStoreProvider;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_56

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_69
        :pswitch_75
        :pswitch_7e
    .end packed-switch
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/SoterKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v0

    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    if-eq v1, v9, :cond_20

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain information about private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    :cond_20
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v2

    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    if-eq v7, v9, :cond_3c

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain X.509 form of public key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    :cond_3c
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    const v7, 0x10000002

    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_50

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_50
    :try_start_50
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_57} :catch_5d

    move-result-object v3

    invoke-static {p1, v3, v6}, Landroid/security/keystore/SoterKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v7

    return-object v7

    :catch_5d
    move-exception v0

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to load private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method public static loadJsonPublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    if-eq v1, v9, :cond_20

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain information about private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    :cond_20
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v2

    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    if-eq v7, v9, :cond_3c

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain X.509 form of public key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    :cond_3c
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    const v7, 0x10000002

    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_50

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_50
    :try_start_50
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_57} :catch_5d

    move-result-object v3

    invoke-static {p1, v3, v6}, Landroid/security/keystore/SoterKeyStoreProvider;->getJsonPublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v7

    return-object v7

    :catch_5d
    move-exception v0

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to load private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/SoterKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

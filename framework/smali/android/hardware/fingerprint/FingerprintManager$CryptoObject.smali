.class public final Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .registers 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMac()Ljavax/crypto/Mac;
    .registers 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Mac;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOpId()J
    .registers 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getSignature()Ljava/security/Signature;
    .registers 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

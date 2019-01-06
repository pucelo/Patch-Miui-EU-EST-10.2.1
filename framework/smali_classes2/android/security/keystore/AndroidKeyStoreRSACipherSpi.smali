.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$PKCS1Padding;
    }
.end annotation


# instance fields
.field private final mKeymasterPadding:I

.field private mKeymasterPaddingOverride:I

.field private mModulusSizeBytes:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 7

    const/4 v4, -0x1

    const v2, 0x10000002

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    move-result v0

    if-ne v0, v4, :cond_10

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    :cond_10
    const v2, 0x20000006

    invoke-virtual {p1, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPurposeOverride()I

    move-result v1

    if-eq v1, v4, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    const/4 v2, 0x3

    if-ne v1, v2, :cond_29

    :cond_22
    const v2, 0x20000005

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    :cond_29
    return-void
.end method

.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetBlockSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .registers 3

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    move-result v0

    return v0
.end method

.method protected final getKeymasterPaddingOverride()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final getModulusSizeBytes()I
    .registers 3

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-wide/16 v10, -0x1

    const/4 v2, 0x0

    if-nez p2, :cond_e

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Unsupported key: null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string/jumbo v0, "RSA"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "RSA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_76

    move-object v7, p2

    check-cast v7, Landroid/security/keystore/AndroidKeyStoreKey;

    :goto_55
    instance-of v0, v7, Ljava/security/PrivateKey;

    if-eqz v0, :cond_d4

    packed-switch p1, :pswitch_data_19e

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_7e

    move-object v7, p2

    check-cast v7, Landroid/security/keystore/AndroidKeyStoreKey;

    goto :goto_55

    :cond_7e
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_98
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    move-result v0

    if-nez v0, :cond_12b

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA private keys cannot be used with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Only RSA public keys supported for this mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    packed-switch p1, :pswitch_data_1aa

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA public keys cannot be used with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f5
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSA public keys cannot be used with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Only RSA private keys supported for this opmode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12b
    :pswitch_12b
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v4

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v6

    const/4 v0, 0x1

    if-eq v6, v0, :cond_155

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;

    move-result-object v0

    throw v0

    :cond_155
    const v0, 0x30000003

    invoke-virtual {v5, v0, v10, v11}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-nez v0, :cond_169

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Size of key not known"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_169
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v8, v0

    if-lez v0, :cond_191

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_191
    const-wide/16 v0, 0x7

    add-long/2addr v0, v8

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    invoke-virtual {p0, v7}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void

    :pswitch_data_19e
    .packed-switch 0x1
        :pswitch_98
        :pswitch_12b
        :pswitch_98
        :pswitch_12b
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_f5
        :pswitch_12b
        :pswitch_f5
    .end packed-switch
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 2

    return-void
.end method

.method protected final resetAll()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .registers 1

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-void
.end method

.method protected final setKeymasterPaddingOverride(I)V
    .registers 2

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return-void
.end method

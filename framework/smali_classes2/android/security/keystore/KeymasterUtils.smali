.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .registers 9

    const v4, 0x30000008

    sparse-switch p1, :sswitch_data_68

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    const/16 v2, 0x20

    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x60

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_6

    :sswitch_15
    array-length v2, p3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3b

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Exactly one digest must be authorized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3b
    const/4 v2, 0x0

    aget v1, p3, v2

    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_63

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_63
    int-to-long v2, v0

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_6

    :sswitch_data_68
    .sparse-switch
        0x20 -> :sswitch_7
        0x80 -> :sswitch_15
    .end sparse-switch
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    .registers 16

    if-nez p1, :cond_9

    const v1, 0x700001f7

    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    return-void

    :cond_9
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5c

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    :goto_1e
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_30

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    const-wide/16 v2, 0x0

    goto :goto_1e

    :cond_30
    const-wide/16 v6, 0x0

    cmp-long v1, p5, v6

    if-eqz v1, :cond_53

    move-wide v4, p5

    :goto_37
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    const v6, -0x5ffffe0a

    invoke-virtual {p0, v6, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const v1, 0x100001f8

    const/4 v6, 0x2

    invoke-virtual {p0, v1, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    if-eqz p3, :cond_83

    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v6, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    invoke-direct {v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    if-eqz p4, :cond_57

    move-wide v4, v2

    goto :goto_37

    :cond_57
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v4

    goto :goto_37

    :cond_5c
    const-wide/16 v6, 0x0

    cmp-long v1, p5, v6

    if-eqz v1, :cond_84

    move-wide v4, p5

    :goto_63
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    const v6, -0x5ffffe0a

    invoke-virtual {p0, v6, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const v1, 0x100001f8

    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    int-to-long v6, p2

    const v1, 0x300001f9

    invoke-virtual {p0, v1, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    if-eqz p3, :cond_83

    const v1, 0x700001fa

    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_83
    return-void

    :cond_84
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v4

    goto :goto_63
.end method

.method public static getDigestOutputSizeBits(I)I
    .registers 4

    packed-switch p0, :pswitch_data_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/4 v0, -0x1

    return v0

    :pswitch_1f
    const/16 v0, 0x80

    return v0

    :pswitch_22
    const/16 v0, 0xa0

    return v0

    :pswitch_25
    const/16 v0, 0xe0

    return v0

    :pswitch_28
    const/16 v0, 0x100

    return v0

    :pswitch_2b
    const/16 v0, 0x180

    return v0

    :pswitch_2e
    const/16 v0, 0x200

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method private static getRootSid()J
    .registers 4

    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    return-wide v0
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .registers 4

    sparse-switch p0, :sswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1d
    const/4 v0, 0x0

    return v0

    :sswitch_1f
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_1f
        0x20 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .registers 4

    packed-switch p0, :pswitch_data_22

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/4 v0, 0x0

    return v0

    :pswitch_1f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1f
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

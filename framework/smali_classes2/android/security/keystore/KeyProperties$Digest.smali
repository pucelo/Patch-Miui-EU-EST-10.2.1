.class public abstract Landroid/security/keystore/KeyProperties$Digest;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Digest"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v4

    :cond_9
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2d
    return-object v3
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .registers 7

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    array-length v4, p0

    if-nez v4, :cond_9

    :cond_6
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    return-object v3

    :cond_9
    array-length v4, p0

    new-array v2, v4, [I

    const/4 v1, 0x0

    array-length v4, p0

    :goto_e
    if-ge v3, v4, :cond_1d

    aget-object v0, p0, v3

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1d
    return-object v2
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const-string/jumbo v0, "NONE"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "MD5"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "SHA-1"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "SHA-224"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "SHA-256"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "SHA-384"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "SHA-512"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method public static fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const-string/jumbo v0, "NONE"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "MD5"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "SHA1"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "SHA224"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "SHA256"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "SHA384"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "SHA512"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SHA-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x2

    return v0

    :cond_11
    const-string/jumbo v1, "SHA-224"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x3

    return v0

    :cond_1c
    const-string/jumbo v1, "SHA-256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x4

    return v0

    :cond_27
    const-string/jumbo v1, "SHA-384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v0, 0x5

    return v0

    :cond_32
    const-string/jumbo v1, "SHA-512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v0, 0x6

    return v0

    :cond_3d
    const-string/jumbo v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v0, 0x0

    return v0

    :cond_48
    const-string/jumbo v1, "MD5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    return v0

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

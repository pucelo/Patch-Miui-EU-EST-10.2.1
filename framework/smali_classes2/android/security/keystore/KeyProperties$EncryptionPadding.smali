.class public abstract Landroid/security/keystore/KeyProperties$EncryptionPadding;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EncryptionPadding"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .registers 4

    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_8

    :cond_5
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    return-object v2

    :cond_8
    array-length v2, p0

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_1a

    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    return-object v1
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .registers 4

    sparse-switch p0, :sswitch_data_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported encryption padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1d
    const-string/jumbo v0, "NoPadding"

    return-object v0

    :sswitch_21
    const-string/jumbo v0, "PKCS7Padding"

    return-object v0

    :sswitch_25
    const-string/jumbo v0, "PKCS1Padding"

    return-object v0

    :sswitch_29
    const-string/jumbo v0, "OAEPPadding"

    return-object v0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_29
        0x4 -> :sswitch_25
        0x40 -> :sswitch_21
    .end sparse-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .registers 4

    const-string/jumbo v0, "NoPadding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const-string/jumbo v0, "PKCS7Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x40

    return v0

    :cond_17
    const-string/jumbo v0, "PKCS1Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x4

    return v0

    :cond_22
    const-string/jumbo v0, "OAEPPadding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    return v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

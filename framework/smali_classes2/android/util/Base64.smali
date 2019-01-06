.class public Landroid/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Base64$Coder;,
        Landroid/util/Base64$Decoder;,
        Landroid/util/Base64$Encoder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/util/Base64;->-assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Landroid/util/Base64$Decoder;

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v0, p3, v2}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, p2, v2}, Landroid/util/Base64$Decoder;->process([BIIZ)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bad base-64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    iget v2, v0, Landroid/util/Base64$Decoder;->op:I

    iget-object v3, v0, Landroid/util/Base64$Decoder;->output:[B

    array-length v3, v3

    if-ne v2, v3, :cond_26

    iget-object v2, v0, Landroid/util/Base64$Decoder;->output:[B

    return-object v2

    :cond_26
    iget v2, v0, Landroid/util/Base64$Decoder;->op:I

    new-array v1, v2, [B

    iget-object v2, v0, Landroid/util/Base64$Decoder;->output:[B

    iget v3, v0, Landroid/util/Base64$Decoder;->op:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method public static encode([BI)[B
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/util/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .registers 9

    const/4 v3, 0x1

    new-instance v0, Landroid/util/Base64$Encoder;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    div-int/lit8 v2, p2, 0x3

    mul-int/lit8 v1, v2, 0x4

    iget-boolean v2, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v2, :cond_3d

    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_15

    add-int/lit8 v1, v1, 0x4

    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v2, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_28

    if-lez p2, :cond_28

    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v4, v2, 0x1

    iget-boolean v2, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v2, :cond_49

    const/4 v2, 0x2

    :goto_26
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    :cond_28
    new-array v2, v1, [B

    iput-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    invoke-virtual {v0, p0, p1, p2, v3}, Landroid/util/Base64$Encoder;->process([BIIZ)Z

    sget-boolean v2, Landroid/util/Base64;->-assertionsDisabled:Z

    if-nez v2, :cond_4b

    iget v2, v0, Landroid/util/Base64$Encoder;->op:I

    if-eq v2, v1, :cond_4b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3d
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_4e

    goto :goto_15

    :pswitch_43
    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    :pswitch_46
    add-int/lit8 v1, v1, 0x3

    goto :goto_15

    :cond_49
    move v2, v3

    goto :goto_26

    :cond_4b
    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    return-object v2

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .registers 8

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Landroid/util/Base64;->encode([BIII)[B

    move-result-object v2

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

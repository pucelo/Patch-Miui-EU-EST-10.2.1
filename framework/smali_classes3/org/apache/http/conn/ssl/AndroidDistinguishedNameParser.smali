.class final Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;
.super Ljava/lang/Object;
.source "AndroidDistinguishedNameParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x20

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    :cond_a
    :goto_a
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1f

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1f
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_ca

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_a

    :sswitch_3f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :sswitch_4e
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_a

    :sswitch_63
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    :goto_77
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_96

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_96

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_77

    :cond_96
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_a6

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_b5

    :cond_a6
    :goto_a6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_b5
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_a6

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_a

    goto :goto_a6

    :sswitch_data_ca
    .sparse-switch
        0x20 -> :sswitch_63
        0x2b -> :sswitch_3f
        0x2c -> :sswitch_3f
        0x3b -> :sswitch_3f
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method

.method private getByte(I)I
    .registers 11

    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v2, v3, :cond_2c

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v0, v2, p1

    if-lt v0, v4, :cond_46

    if-gt v0, v5, :cond_46

    add-int/lit8 v0, v0, -0x30

    :goto_36
    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    if-lt v1, v4, :cond_72

    if-gt v1, v5, :cond_72

    add-int/lit8 v1, v1, -0x30

    :goto_42
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    :cond_46
    if-lt v0, v8, :cond_4f

    const/16 v2, 0x66

    if-gt v0, v2, :cond_4f

    add-int/lit8 v0, v0, -0x57

    goto :goto_36

    :cond_4f
    if-lt v0, v6, :cond_56

    if-gt v0, v7, :cond_56

    add-int/lit8 v0, v0, -0x37

    goto :goto_36

    :cond_56
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_72
    if-lt v1, v8, :cond_7b

    const/16 v2, 0x66

    if-gt v1, v2, :cond_7b

    add-int/lit8 v1, v1, -0x57

    goto :goto_42

    :cond_7b
    if-lt v1, v6, :cond_82

    if-gt v1, v7, :cond_82

    add-int/lit8 v1, v1, -0x37

    goto :goto_42

    :cond_82
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEscaped()C
    .registers 4

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_28

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_3e

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    :sswitch_36
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    nop

    :sswitch_data_3e
    .sparse-switch
        0x20 -> :sswitch_36
        0x22 -> :sswitch_36
        0x23 -> :sswitch_36
        0x25 -> :sswitch_36
        0x2a -> :sswitch_36
        0x2b -> :sswitch_36
        0x2c -> :sswitch_36
        0x3b -> :sswitch_36
        0x3c -> :sswitch_36
        0x3d -> :sswitch_36
        0x3e -> :sswitch_36
        0x5c -> :sswitch_36
        0x5f -> :sswitch_36
    .end sparse-switch
.end method

.method private getUTF8()C
    .registers 9

    const/16 v7, 0x80

    const/16 v6, 0x3f

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0, v4}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v3

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    if-ge v3, v7, :cond_14

    int-to-char v4, v3

    return v4

    :cond_14
    const/16 v4, 0xc0

    if-lt v3, v4, :cond_6b

    const/16 v4, 0xf7

    if-gt v3, v4, :cond_6b

    const/16 v4, 0xdf

    if-gt v3, v4, :cond_3d

    const/4 v1, 0x1

    and-int/lit8 v3, v3, 0x1f

    :goto_23
    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_69

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v4, v5, :cond_3c

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_49

    :cond_3c
    return v6

    :cond_3d
    const/16 v4, 0xef

    if-gt v3, v4, :cond_45

    const/4 v1, 0x2

    and-int/lit8 v3, v3, 0xf

    goto :goto_23

    :cond_45
    const/4 v1, 0x3

    and-int/lit8 v3, v3, 0x7

    goto :goto_23

    :cond_49
    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0, v4}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v0

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    and-int/lit16 v4, v0, 0xc0

    if-eq v4, v7, :cond_60

    return v6

    :cond_60
    shl-int/lit8 v4, v3, 0x6

    and-int/lit8 v5, v0, 0x3f

    add-int v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_69
    int-to-char v4, v3

    return v4

    :cond_6b
    return v6
.end method

.method private hexAV()Ljava/lang/String;
    .registers 9

    const/16 v7, 0x20

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x4

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v4, v5, :cond_26

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected end of DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_26
    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_30
    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v4, v5, :cond_40

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6d

    :cond_40
    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    :cond_44
    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int v1, v4, v5

    const/4 v4, 0x5

    if-lt v1, v4, :cond_51

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_cf

    :cond_51
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected end of DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6d
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_40

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_40

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_a8

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_93
    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v4, v5, :cond_44

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_44

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_93

    :cond_a8
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x41

    if-lt v4, v5, :cond_c7

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x46

    if-gt v4, v5, :cond_c7

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v6, v4, v5

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    aput-char v6, v4, v5

    :cond_c7
    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto/16 :goto_30

    :cond_cf
    div-int/lit8 v4, v1, 0x2

    new-array v0, v4, [B

    const/4 v2, 0x0

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v3, v4, 0x1

    :goto_d8
    array-length v4, v0

    if-ge v2, v4, :cond_e7

    invoke-direct {p0, v3}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    :cond_e7
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private nextAT()Ljava/lang/String;
    .registers 6

    const/16 v3, 0x3d

    const/16 v2, 0x20

    :goto_4
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_19

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_4

    :cond_19
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    return-object v0

    :cond_21
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_2b
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_48

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_48

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_48

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_2b

    :cond_48
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_6a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_bd

    :goto_76
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_93

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_93

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_93

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_76

    :cond_93
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_a1

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_bd

    :cond_a1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_c3
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_d8

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_d8

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_c3

    :cond_d8
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_136

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_136

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_100

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_136

    :cond_100
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_118

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_136

    :cond_118
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_130

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_136

    :cond_130
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    :cond_136
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    :goto_e
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_57

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_40
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_85

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_85

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_40

    :cond_57
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_78

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    :goto_6b
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    goto :goto_e

    :cond_78
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_6b

    :cond_85
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    return-object v4

    :cond_19
    const-string/jumbo v1, ""

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v2, v3, :cond_23

    return-object v4

    :cond_23
    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_aa

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    :goto_30
    :sswitch_30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    return-object v1

    :sswitch_37
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :sswitch_3c
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_41
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v2, v3, :cond_48

    return-object v4

    :cond_48
    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_5c

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_84

    :cond_5c
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_84
    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_5c

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_aa
    .sparse-switch
        0x22 -> :sswitch_37
        0x23 -> :sswitch_3c
        0x2b -> :sswitch_30
        0x2c -> :sswitch_30
        0x3b -> :sswitch_30
    .end sparse-switch
.end method

.method public getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    return-object v2

    :cond_1c
    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v3, v4, :cond_4c

    const-string/jumbo v1, ""

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_ba

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    :goto_32
    :sswitch_32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_43
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_57

    :cond_4c
    return-object v2

    :sswitch_4d
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :sswitch_52
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_57
    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_6b

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_93

    :cond_6b
    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Malformed DN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_93
    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_6b

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Malformed DN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_ba
    .sparse-switch
        0x22 -> :sswitch_4d
        0x23 -> :sswitch_52
        0x2b -> :sswitch_32
        0x2c -> :sswitch_32
        0x3b -> :sswitch_32
    .end sparse-switch
.end method

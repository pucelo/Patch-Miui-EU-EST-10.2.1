.class public Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"

# interfaces
.implements Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalCharacterValueSanitizer"
.end annotation


# static fields
.field public static final ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final ALL_ILLEGAL:I = 0x0

.field public static final ALL_OK:I = 0x7ff

.field public static final ALL_WHITESPACE_OK:I = 0x3

.field public static final AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final AMP_LEGAL:I = 0x80

.field public static final AMP_OK:I = 0x80

.field public static final DQUOTE_OK:I = 0x8

.field public static final GT_OK:I = 0x40

.field private static final JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final LT_OK:I = 0x20

.field private static final MIN_SCRIPT_PREFIX_LENGTH:I

.field public static final NON_7_BIT_ASCII_OK:I = 0x4

.field public static final NUL_OK:I = 0x200

.field public static final OTHER_WHITESPACE_OK:I = 0x2

.field public static final PCT_OK:I = 0x100

.field public static final SCRIPT_URL_OK:I = 0x400

.field public static final SPACE_LEGAL:I = 0x1

.field public static final SPACE_OK:I = 0x1

.field public static final SQUOTE_OK:I = 0x10

.field public static final URL_AND_SPACE_LEGAL:I = 0x195

.field public static final URL_LEGAL:I = 0x194

.field private static final VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "vbscript:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    return-void
.end method

.method private characterIsLegal(C)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_6c

    const/16 v2, 0x20

    if-lt p1, v2, :cond_5f

    const/16 v2, 0x7f

    if-ge p1, v2, :cond_5f

    :cond_d
    :goto_d
    return v0

    :sswitch_e
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :sswitch_17
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d

    :sswitch_20
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_27

    :goto_26
    return v0

    :cond_27
    move v0, v1

    goto :goto_26

    :sswitch_29
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_30

    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f

    :sswitch_32
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_39

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38

    :sswitch_3b
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_42

    :goto_41
    return v0

    :cond_42
    move v0, v1

    goto :goto_41

    :sswitch_44
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4b

    :goto_4a
    return v0

    :cond_4b
    move v0, v1

    goto :goto_4a

    :sswitch_4d
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_54

    :goto_53
    return v0

    :cond_54
    move v0, v1

    goto :goto_53

    :sswitch_56
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_5d

    :goto_5c
    return v0

    :cond_5d
    move v0, v1

    goto :goto_5c

    :cond_5f
    const/16 v2, 0x80

    if-lt p1, v2, :cond_69

    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_d

    :cond_69
    move v0, v1

    goto :goto_d

    nop

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_56
        0x9 -> :sswitch_17
        0xa -> :sswitch_17
        0xb -> :sswitch_17
        0xc -> :sswitch_17
        0xd -> :sswitch_17
        0x20 -> :sswitch_e
        0x22 -> :sswitch_20
        0x25 -> :sswitch_4d
        0x26 -> :sswitch_44
        0x27 -> :sswitch_29
        0x3c -> :sswitch_32
        0x3e -> :sswitch_3b
    .end sparse-switch
.end method

.method private isWhitespace(C)Z
    .registers 3

    sparse-switch p1, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    move v0, v1

    :goto_8
    if-gt v2, v1, :cond_17

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    :goto_17
    if-lt v0, v2, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_26

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_26
    if-nez v2, :cond_2b

    if-ne v0, v1, :cond_2b

    return-object p1

    :cond_2b
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2e

    sget v5, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    if-lt v3, v5, :cond_2e

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "javascript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string/jumbo v5, "vbscript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_2a
    const-string/jumbo v5, ""

    return-object v5

    :cond_2e
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_3c

    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v3, :cond_5f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->characterIsLegal(C)Z

    move-result v5

    if-nez v5, :cond_56

    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5c

    const/16 v1, 0x20

    :cond_56
    :goto_56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_5c
    const/16 v1, 0x5f

    goto :goto_56

    :cond_5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

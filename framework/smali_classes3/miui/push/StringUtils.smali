.class public Lmiui/push/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final AMP_ENCODE:[C

.field private static final APOS_ENCODE:[C

.field private static final GT_ENCODE:[C

.field private static final LT_ENCODE:[C

.field private static final QUOTE_ENCODE:[C

.field private static numbersAndLetters:[C

.field private static randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    const-string/jumbo v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    const-string/jumbo v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    const-string/jumbo v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->LT_ENCODE:[C

    const-string/jumbo v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->GT_ENCODE:[C

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    const-string/jumbo v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->numbersAndLetters:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_d

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lmiui/push/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_8
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/push/StringUtils;->encodeBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BIIZ)Ljava/lang/String;
    .registers 5

    if-eqz p3, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, p1, p2, v0}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public static encodeBase64([BZ)Ljava/lang/String;
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lmiui/push/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v6, 0x0

    const/16 v12, 0x3e

    const/4 v7, 0x0

    if-nez p0, :cond_7

    return-object v6

    :cond_7
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    int-to-double v8, v4

    const-wide v10, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v8, v10

    double-to-int v6, v8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1b
    if-ge v1, v4, :cond_bc

    aget-char v0, v2, v1

    if-le v0, v12, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_24
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_37

    if-le v1, v3, :cond_2f

    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2f
    add-int/lit8 v3, v1, 0x1

    sget-object v6, Lmiui/push/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_37
    if-ne v0, v12, :cond_48

    if-le v1, v3, :cond_40

    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_40
    add-int/lit8 v3, v1, 0x1

    sget-object v6, Lmiui/push/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_48
    const/16 v6, 0x26

    if-ne v0, v6, :cond_94

    if-le v1, v3, :cond_53

    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_53
    add-int/lit8 v6, v1, 0x5

    if-le v4, v6, :cond_92

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v2, v6

    const/16 v8, 0x23

    if-ne v6, v8, :cond_92

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_92

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_92

    add-int/lit8 v6, v1, 0x4

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_92

    add-int/lit8 v6, v1, 0x5

    aget-char v6, v2, v6

    const/16 v8, 0x3b

    if-ne v6, v8, :cond_90

    const/4 v6, 0x1

    :goto_86
    if-nez v6, :cond_21

    add-int/lit8 v3, v1, 0x1

    sget-object v6, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_90
    move v6, v7

    goto :goto_86

    :cond_92
    move v6, v7

    goto :goto_86

    :cond_94
    const/16 v6, 0x22

    if-ne v0, v6, :cond_a8

    if-le v1, v3, :cond_9f

    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_9f
    add-int/lit8 v3, v1, 0x1

    sget-object v6, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_21

    :cond_a8
    const/16 v6, 0x27

    if-ne v0, v6, :cond_21

    if-le v1, v3, :cond_b3

    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_b3
    add-int/lit8 v3, v1, 0x1

    sget-object v6, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_21

    :cond_bc
    if-nez v3, :cond_bf

    return-object p0

    :cond_bf
    if-le v1, v3, :cond_c6

    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_c6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    :catch_8
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Lmiui/push/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string/jumbo v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_24} :catch_26

    move-result-object v3

    return-object v3

    :catch_26
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isValidXmlChar(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_b

    const v1, 0xd7ff

    if-gt p0, v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const v1, 0xe000

    if-lt p0, v1, :cond_15

    const v1, 0xfffd

    if-le p0, v1, :cond_a

    :cond_15
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_1e

    const v1, 0x10ffff

    if-le p0, v1, :cond_a

    :cond_1e
    const/16 v1, 0x9

    if-eq p0, v1, :cond_a

    const/16 v1, 0xa

    if-eq p0, v1, :cond_a

    const/16 v1, 0xd

    if-eq p0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static randomString(I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    if-ge p0, v2, :cond_5

    const/4 v2, 0x0

    return-object v2

    :cond_5
    new-array v1, p0, [C

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    sget-object v2, Lmiui/push/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_5

    return-object v6

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_43

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v5, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/2addr v1, v4

    move v2, v1

    :goto_27
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_39

    sub-int v6, v1, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/2addr v1, v4

    move v2, v1

    goto :goto_27

    :cond_39
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_43
    return-object p0
.end method

.method public static stripInvalidXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmiui/push/StringUtils;->isValidXmlChar(C)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "&lt;"

    const-string/jumbo v1, "<"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&gt;"

    const-string/jumbo v1, ">"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&quot;"

    const-string/jumbo v1, "\""

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&apos;"

    const-string/jumbo v1, "\'"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "&amp;"

    const-string/jumbo v1, "&"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

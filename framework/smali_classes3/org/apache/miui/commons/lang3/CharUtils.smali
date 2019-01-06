.class public Lorg/apache/miui/commons/lang3/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# static fields
.field private static final CHAR_STRING_ARRAY:[Ljava/lang/String;

.field public static final CR:C = '\r'

.field public static final LF:C = '\n'


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    sget-object v1, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_7

    :cond_18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAscii(C)Z
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isAsciiAlpha(C)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x41

    if-lt p0, v2, :cond_b

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x61

    if-lt p0, v2, :cond_13

    const/16 v2, 0x7a

    if-le p0, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method public static isAsciiAlphaLower(C)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x61

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static isAsciiAlphaUpper(C)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x41

    if-lt p0, v1, :cond_a

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static isAsciiAlphanumeric(C)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x41

    if-lt p0, v2, :cond_b

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x61

    if-lt p0, v2, :cond_13

    const/16 v2, 0x7a

    if-le p0, v2, :cond_a

    :cond_13
    const/16 v2, 0x30

    if-lt p0, v2, :cond_1b

    const/16 v2, 0x39

    if-le p0, v2, :cond_a

    :cond_1b
    move v0, v1

    goto :goto_a
.end method

.method public static isAsciiControl(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7f

    if-ne p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isAsciiNumeric(C)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static isAsciiPrintable(C)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static toChar(Ljava/lang/Character;)C
    .registers 3

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/Character;C)C
    .registers 3

    if-nez p0, :cond_3

    return p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;)C
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;C)C
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toCharacterObject(C)Ljava/lang/Character;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static toCharacterObject(Ljava/lang/String;)Ljava/lang/Character;
    .registers 2

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static toIntValue(C)I
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in the range \'0\' - \'9\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static toIntValue(CI)I
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    :cond_7
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;)I
    .registers 3

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->toIntValue(C)I

    move-result v0

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;I)I
    .registers 3

    if-nez p0, :cond_3

    return p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/CharUtils;->toIntValue(CI)I

    move-result v0

    return v0
.end method

.method public static toString(C)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    sget-object v0, Lorg/apache/miui/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toString(Ljava/lang/Character;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodeEscaped(C)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x10

    if-ge p0, v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    const/16 v0, 0x100

    if-ge p0, v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodeEscaped(Ljava/lang/Character;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/CharUtils;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

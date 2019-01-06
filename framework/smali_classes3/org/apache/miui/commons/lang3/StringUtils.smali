.class public Lorg/apache/miui/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000

.field private static final WHITESPACE_BLOCK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x4

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    if-ge p2, v3, :cond_10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Minimum abbreviation width is 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_17

    return-object p0

    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    :cond_32
    const-string/jumbo v0, "..."

    if-gt p1, v3, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, -0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_53
    const/4 v1, 0x7

    if-ge p2, v1, :cond_5f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Minimum abbreviation width with offset is 7"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_88

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v2, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, -0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    return-object p0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ge p2, v4, :cond_1c

    :cond_1b
    return-object p0

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v3, p2, v4

    div-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v3, 0x2

    add-int v2, v4, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int v1, v4, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-object p0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_4

    if-gtz p1, :cond_5

    :cond_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-gtz v0, :cond_e

    return-object p0

    :cond_e
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_4

    if-gtz p1, :cond_5

    :cond_4
    return-object p0

    :cond_5
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo p2, " "

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-gtz v0, :cond_17

    return-object p0

    :cond_17
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v5, 0xd

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_1b

    if-ne v0, v7, :cond_1f

    :cond_1b
    const-string/jumbo v3, ""

    return-object v3

    :cond_1f
    return-object p0

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_3b

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_36

    add-int/lit8 v2, v2, -0x1

    :cond_36
    :goto_36
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3b
    if-eq v1, v5, :cond_36

    add-int/lit8 v2, v2, 0x1

    goto :goto_36
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_5

    return-object v4

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_10

    const-string/jumbo v4, ""

    return-object v4

    :cond_10
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2f

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2f

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2f
    return-object v2
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return v0

    :cond_6
    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    return v10

    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    array-length v6, p1

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_45

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v6, :cond_42

    aget-char v7, p1, v4

    if-ne v7, v0, :cond_3f

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3e

    if-ne v4, v5, :cond_2f

    return v9

    :cond_2f
    if-ge v3, v1, :cond_3f

    add-int/lit8 v7, v4, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3f

    return v9

    :cond_3e
    return v9

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_45
    return v10
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return v4

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v6, v0, v5

    const/4 v2, 0x0

    :goto_12
    if-gt v2, v6, :cond_20

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    return v4
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return v10

    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    array-length v6, p1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_3d

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v6, :cond_3a

    aget-char v7, p1, v4

    if-ne v7, v0, :cond_37

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_36

    if-ne v4, v5, :cond_27

    return v9

    :cond_27
    if-ge v3, v1, :cond_37

    add-int/lit8 v7, v4, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_37

    return v9

    :cond_36
    return v9

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3d
    return v10
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p0, :cond_7

    :cond_6
    return v1

    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_e

    return v0

    :cond_e
    array-length v2, p1

    if-nez v2, :cond_12

    return v1

    :cond_12
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return v3
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 5

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    const/4 v2, 0x0

    return v2

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_10

    :cond_1f
    return v0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, p0

    goto :goto_6
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, p0

    goto :goto_6
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string/jumbo p0, ""

    :cond_5
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p0

    goto :goto_2
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [C

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, v1

    :goto_10
    if-ge v3, v4, :cond_28

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_32

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    :goto_24
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_10

    :cond_28
    if-ne v2, v4, :cond_2b

    return-object p0

    :cond_2b
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    :cond_32
    move v1, v2

    goto :goto_24
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const-string/jumbo v1, ""

    return-object v1

    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 9

    const/4 v4, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_b

    :cond_5
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    const/4 v4, 0x1

    :cond_a
    return v4

    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_16

    return v4

    :cond_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    return v2

    :cond_e
    array-length v3, p1

    move v1, v2

    :goto_10
    if-ge v1, v3, :cond_1f

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v1, 0x1

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    return v2
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_b

    :cond_6
    if-ne p0, p1, :cond_9

    :goto_8
    return v1

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_a

    :cond_6
    const-string/jumbo v1, ""

    return-object v1

    :cond_a
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    aget-object v1, p0, v2

    if-nez v1, :cond_19

    const-string/jumbo v1, ""

    return-object v1

    :cond_19
    aget-object v1, p0, v2

    return-object v1

    :cond_1c
    if-nez v0, :cond_22

    const-string/jumbo v1, ""

    return-object v1

    :cond_22
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 15

    const/4 v12, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_e

    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Strings must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v6, :cond_19

    return v5

    :cond_19
    if-nez v5, :cond_1c

    return v6

    :cond_1c
    if-le v6, v5, :cond_26

    move-object v9, p0

    move-object p0, p1

    move-object p1, v9

    move v6, v5

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :cond_26
    add-int/lit8 v10, v6, 0x1

    new-array v7, v10, [I

    add-int/lit8 v10, v6, 0x1

    new-array v2, v10, [I

    const/4 v3, 0x0

    :goto_2f
    if-gt v3, v6, :cond_36

    aput v3, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_36
    const/4 v4, 0x1

    :goto_37
    if-gt v4, v5, :cond_71

    add-int/lit8 v10, v4, -0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v4, v2, v12

    const/4 v3, 0x1

    :goto_42
    if-gt v3, v6, :cond_6b

    add-int/lit8 v10, v3, -0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_69

    const/4 v1, 0x0

    :goto_4d
    add-int/lit8 v10, v3, -0x1

    aget v10, v2, v10

    add-int/lit8 v10, v10, 0x1

    aget v11, v7, v3

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v11, v3, -0x1

    aget v11, v7, v11

    add-int/2addr v11, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_69
    const/4 v1, 0x1

    goto :goto_4d

    :cond_6b
    move-object v0, v7

    move-object v7, v2

    move-object v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_71
    aget v10, v7, v6

    return v10
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 18

    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    :cond_4
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Strings must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_d
    if-gez p2, :cond_18

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Threshold must not be negative"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v9, :cond_29

    move/from16 v0, p2

    if-gt v6, v0, :cond_27

    :goto_26
    return v6

    :cond_27
    const/4 v6, -0x1

    goto :goto_26

    :cond_29
    if-nez v6, :cond_32

    move/from16 v0, p2

    if-gt v9, v0, :cond_30

    :goto_2f
    return v9

    :cond_30
    const/4 v9, -0x1

    goto :goto_2f

    :cond_32
    if-le v9, v6, :cond_3e

    move-object v12, p0

    move-object/from16 p0, p1

    move-object/from16 p1, v12

    move v9, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v6

    :cond_3e
    add-int/lit8 v13, v9, 0x1

    new-array v10, v13, [I

    add-int/lit8 v13, v9, 0x1

    new-array v3, v13, [I

    move/from16 v0, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v2, :cond_56

    aput v4, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_56
    array-length v13, v10

    const v14, 0x7fffffff

    invoke-static {v10, v2, v13, v14}, Ljava/util/Arrays;->fill([IIII)V

    const v13, 0x7fffffff

    invoke-static {v3, v13}, Ljava/util/Arrays;->fill([II)V

    const/4 v5, 0x1

    :goto_64
    if-gt v5, v6, :cond_bd

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/4 v13, 0x0

    aput v5, v3, v13

    sub-int v13, v5, p2

    const/4 v14, 0x1

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v13, v5, p2

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-le v8, v7, :cond_82

    const/4 v13, -0x1

    return v13

    :cond_82
    const/4 v13, 0x1

    if-le v8, v13, :cond_8c

    add-int/lit8 v13, v8, -0x1

    const v14, 0x7fffffff

    aput v14, v3, v13

    :cond_8c
    move v4, v8

    :goto_8d
    if-gt v4, v7, :cond_b7

    add-int/lit8 v13, v4, -0x1

    invoke-interface {p0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_a0

    add-int/lit8 v13, v4, -0x1

    aget v13, v10, v13

    aput v13, v3, v4

    :goto_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    :cond_a0
    add-int/lit8 v13, v4, -0x1

    aget v13, v3, v13

    aget v14, v10, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v14, v4, -0x1

    aget v14, v10, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    aput v13, v3, v4

    goto :goto_9d

    :cond_b7
    move-object v1, v10

    move-object v10, v3

    move-object v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    :cond_bd
    aget v13, v10, v9

    move/from16 v0, p2

    if-gt v13, v0, :cond_c6

    aget v13, v10, v9

    return v13

    :cond_c6
    const/4 v13, -0x1

    return v13
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_6
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, -0x1

    return v0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    return v0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .registers 12

    const/4 v9, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    return v9

    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    array-length v6, p1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_43

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v6, :cond_40

    aget-char v7, p1, v4

    if-ne v7, v0, :cond_3d

    if-ge v3, v1, :cond_3c

    if-ge v4, v5, :cond_3c

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3c

    add-int/lit8 v7, v4, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3d

    return v3

    :cond_3c
    return v3

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_43
    return v9
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 9

    const/4 v5, -0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return v5

    :cond_6
    array-length v3, p1

    const v1, 0x7fffffff

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_20

    aget-object v2, p1, v0

    if-nez v2, :cond_15

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v4, v5, :cond_12

    if-ge v4, v1, :cond_12

    move v1, v4

    goto :goto_12

    :cond_20
    const v6, 0x7fffffff

    if-ne v1, v6, :cond_26

    move v1, v5

    :cond_26
    return v1
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 10

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    return v7

    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v4, :cond_42

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {p1, v0, v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_3a

    const/4 v2, 0x1

    :goto_21
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_3c

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3c

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eqz v2, :cond_3f

    invoke-static {p1, v1, v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-gez v5, :cond_3f

    return v3

    :cond_3a
    const/4 v2, 0x0

    goto :goto_21

    :cond_3c
    if-nez v2, :cond_3f

    return v3

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_42
    return v7
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .registers 12

    const/4 v9, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    return v9

    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    array-length v6, p1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_42

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v6, :cond_41

    aget-char v7, p1, v4

    if-ne v7, v0, :cond_3e

    if-ge v3, v1, :cond_3b

    if-ge v4, v5, :cond_3b

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    add-int/lit8 v7, v4, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3e

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_41
    return v3

    :cond_42
    return v9
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6

    const/4 v3, -0x1

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2e

    :cond_21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_2d

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_31

    :cond_2d
    return v0

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_31
    return v3
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .registers 15

    const/4 v13, 0x0

    const/4 v12, -0x1

    if-eqz p0, :cond_8

    array-length v10, p0

    const/4 v11, 0x1

    if-gt v10, v11, :cond_9

    :cond_8
    return v12

    :cond_9
    const/4 v1, 0x0

    const/4 v0, 0x1

    array-length v2, p0

    const v8, 0x7fffffff

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v2, :cond_32

    aget-object v10, p0, v6

    if-nez v10, :cond_1c

    const/4 v1, 0x1

    const/4 v8, 0x0

    :goto_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    aget-object v10, p0, v6

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget-object v10, p0, v6

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_19

    :cond_32
    if-nez v0, :cond_3a

    if-nez v7, :cond_3b

    xor-int/lit8 v10, v1, 0x1

    if-eqz v10, :cond_3b

    :cond_3a
    return v12

    :cond_3b
    if-nez v8, :cond_3e

    return v13

    :cond_3e
    const/4 v5, -0x1

    const/4 v9, 0x0

    :goto_40
    if-ge v9, v8, :cond_56

    aget-object v10, p0, v13

    invoke-interface {v10, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v3, 0x1

    :goto_49
    if-ge v3, v2, :cond_54

    aget-object v10, p0, v3

    invoke-interface {v10, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v4, :cond_5b

    move v5, v9

    :cond_54
    if-eq v5, v12, :cond_5e

    :cond_56
    if-ne v5, v12, :cond_61

    if-eq v8, v7, :cond_61

    return v8

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    :cond_61
    return v5
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11

    const/4 v4, 0x0

    const/4 v7, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return v7

    :cond_7
    if-gez p2, :cond_a

    const/4 p2, 0x0

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x1

    if-le p2, v6, :cond_18

    return v7

    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1f

    return p2

    :cond_1f
    move v2, p2

    :goto_20
    if-ge v2, v6, :cond_33

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_30

    return v2

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_33
    return v7
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    return v3

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1f

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v2, 0x1

    return v2
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    return v3

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1f

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v2, 0x1

    return v2
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return v3

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1f

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v2, 0x1

    return v2
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return v4

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_21

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    const/4 v2, 0x1

    return v2
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return v3

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1f

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v2, 0x1

    return v2
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return v4

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_21

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    const/4 v2, 0x1

    return v2
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return v3

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_19

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v2

    if-nez v2, :cond_16

    return v3

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    const/4 v2, 0x1

    return v2
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    return v4

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1c

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_19

    return v3

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    return v4
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return v3

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1f

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v2, 0x1

    return v2
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return v4

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_21

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    const/4 v2, 0x1

    return v2
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return v3

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_19

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_16

    return v3

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    const/4 v2, 0x1

    return v2
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, ""

    return-object v3

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v1, :cond_29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_29
    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, ""

    return-object v3

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v1, :cond_29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_29
    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eqz p1, :cond_34

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    sub-int v2, p3, p2

    if-gtz v2, :cond_c

    const-string/jumbo v3, ""

    return-object v3

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p2

    :goto_14
    if-ge v1, p3, :cond_27

    if-le v1, p2, :cond_1b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    aget-object v3, p0, v1

    if-eqz v3, :cond_24

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    if-nez p1, :cond_9

    const-string/jumbo p1, ""

    :cond_9
    sub-int v2, p3, p2

    if-gtz v2, :cond_11

    const-string/jumbo v3, ""

    return-object v3

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p2

    :goto_19
    if-ge v1, p3, :cond_2c

    if-le v1, p2, :cond_20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    aget-object v3, p0, v1

    if-eqz v3, :cond_29

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_6
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 8

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v5, -0x1

    return v5

    :cond_6
    array-length v3, p1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_1f

    aget-object v2, p1, v0

    if-nez v2, :cond_13

    :cond_10
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v2, v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    if-le v4, v1, :cond_10

    move v1, v4

    goto :goto_10

    :cond_1f
    return v1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 10

    const/4 v6, -0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return v6

    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_1c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int p2, v0, v1

    :cond_1c
    if-gez p2, :cond_1f

    return v6

    :cond_1f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_26

    return p2

    :cond_26
    move v2, p2

    :goto_27
    if-ltz v2, :cond_3a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_37

    return v2

    :cond_37
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    :cond_3a
    return v6
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    if-gez p1, :cond_b

    const-string/jumbo v0, ""

    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_12

    return-object p0

    :cond_12
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-gtz v0, :cond_d

    return-object p0

    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_5

    return-object v6

    :cond_5
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo p2, " "

    :cond_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, p1, v5

    if-gtz v4, :cond_1b

    return-object p0

    :cond_1b
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2b

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_2b

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2b
    if-ne v4, v2, :cond_32

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_32
    if-ge v4, v2, :cond_3d

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3d
    new-array v3, v4, [C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v4, :cond_4f

    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_4f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_3
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-ltz p2, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_10

    :cond_c
    const-string/jumbo v0, ""

    return-object v0

    :cond_10
    if-gez p1, :cond_13

    const/4 p1, 0x0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .registers 8

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    const/4 v2, -0x1

    return v2

    :cond_7
    if-lez p2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_16

    if-eqz p3, :cond_15

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :cond_15
    return v2

    :cond_16
    const/4 v0, 0x0

    if-eqz p3, :cond_28

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_1d
    :goto_1d
    if-eqz p3, :cond_2a

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    :goto_25
    if-gez v1, :cond_31

    return v1

    :cond_28
    const/4 v1, -0x1

    goto :goto_1d

    :cond_2a
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_25

    :cond_31
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_1d

    return v1
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_5

    return-object v2

    :cond_5
    if-nez p1, :cond_a

    const-string/jumbo p1, ""

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez p2, :cond_11

    const/4 p2, 0x0

    :cond_11
    if-le p2, v0, :cond_14

    move p2, v0

    :cond_14
    if-gez p3, :cond_17

    const/4 p3, 0x0

    :cond_17
    if-le p3, v0, :cond_1a

    move p3, v0

    :cond_1a
    if-le p2, p3, :cond_1f

    move v1, p2

    move p2, p3

    move p3, v1

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    add-int v3, v0, p2

    sub-int/2addr v3, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    :cond_d
    return-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_14
    array-length v4, v0

    if-ge v1, v4, :cond_25

    aget-char v4, v0, v1

    if-eq v4, p1, :cond_22

    add-int/lit8 v3, v2, 0x1

    aget-char v4, v0, v1

    aput-char v4, v0, v2

    move v2, v3

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-object p0

    :cond_d
    const-string/jumbo v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get1()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get2()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "java.text.Normalizer is not available"

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get0()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get1()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get2()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get3()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get4()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "sun.text.Normalizer is not available"

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get5()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get4()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get6()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-object p0

    :cond_d
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    return-object p0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-object p0

    :cond_d
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .registers 5

    new-array v0, p1, [C

    add-int/lit8 v1, p1, -0x1

    :goto_4
    if-ltz v1, :cond_b

    aput-char p0, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_6

    return-object v7

    :cond_6
    if-gtz p1, :cond_c

    const-string/jumbo v7, ""

    return-object v7

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq p1, v9, :cond_14

    if-nez v4, :cond_15

    :cond_14
    return-object p0

    :cond_15
    if-ne v4, v9, :cond_24

    const/16 v7, 0x2000

    if-gt p1, v7, :cond_24

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_24
    mul-int v6, v4, p1

    packed-switch v4, :pswitch_data_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, p1, :cond_61

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :pswitch_37
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :pswitch_40
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-array v5, v6, [C

    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, v7, -0x2

    :goto_4e
    if-ltz v3, :cond_5b

    aput-char v1, v5, v3

    add-int/lit8 v7, v3, 0x1

    aput-char v2, v5, v7

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_4e

    :cond_5b
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    return-object v7

    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_37
        :pswitch_40
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_4

    if-nez p1, :cond_9

    :cond_4
    invoke-static {p0, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const/16 v5, 0x40

    const/4 v7, -0x1

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    if-nez p2, :cond_12

    :cond_11
    return-object p0

    :cond_12
    if-eqz p3, :cond_11

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_1c

    return-object p0

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v6, v3

    if-gez v2, :cond_29

    const/4 v2, 0x0

    :cond_29
    if-gez p3, :cond_57

    const/16 v5, 0x10

    :cond_2d
    :goto_2d
    mul-int/2addr v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_38
    if-eq v1, v7, :cond_4b

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, v1, v3

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_5b

    :cond_4b
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_57
    if-gt p3, v5, :cond_2d

    move v5, p3

    goto :goto_2d

    :cond_5b
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_38
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    return-object p0

    :cond_d
    if-nez p2, :cond_12

    const-string/jumbo p2, ""

    :cond_12
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v6, :cond_3e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3a

    const/4 v4, 0x1

    if-ge v3, v5, :cond_37

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_3e
    if-eqz v4, :cond_45

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_45
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 25

    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    :cond_8
    return-object p0

    :cond_9
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_8

    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_8

    if-gez p4, :cond_26

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string/jumbo v18, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_26
    move-object/from16 v0, p1

    array-length v12, v0

    move-object/from16 v0, p2

    array-length v10, v0

    if-eq v12, v10, :cond_57

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Search and Replace array lengths don\'t match: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_57
    new-array v8, v12, [Z

    const/4 v15, -0x1

    const/4 v9, -0x1

    const/4 v14, -0x1

    const/4 v6, 0x0

    :goto_5d
    if-ge v6, v12, :cond_96

    aget-boolean v17, v8, v6

    if-nez v17, :cond_67

    aget-object v17, p1, v6

    if-nez v17, :cond_6a

    :cond_67
    :goto_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    :cond_6a
    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_67

    aget-object v17, p2, v6

    if-eqz v17, :cond_67

    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_8b

    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_67

    :cond_8b
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_93

    if-ge v14, v15, :cond_67

    :cond_93
    move v15, v14

    move v9, v6

    goto :goto_67

    :cond_96
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_9d

    return-object p0

    :cond_9d
    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_a0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_c9

    aget-object v17, p1, v6

    if-eqz v17, :cond_b1

    aget-object v17, p2, v6

    if-nez v17, :cond_b4

    :cond_b1
    :goto_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_a0

    :cond_b4
    aget-object v17, p2, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v18, p1, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v5, v17, v18

    if-lez v5, :cond_b1

    mul-int/lit8 v17, v5, 0x3

    add-int v7, v7, v17

    goto :goto_b1

    :cond_c9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_e2
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_145

    move v6, v13

    :goto_e9
    if-ge v6, v15, :cond_f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e9

    :cond_f9
    aget-object v17, p2, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v15, v17

    const/4 v15, -0x1

    const/4 v9, -0x1

    const/4 v14, -0x1

    const/4 v6, 0x0

    :goto_10c
    if-ge v6, v12, :cond_e2

    aget-boolean v17, v8, v6

    if-nez v17, :cond_116

    aget-object v17, p1, v6

    if-nez v17, :cond_119

    :cond_116
    :goto_116
    add-int/lit8 v6, v6, 0x1

    goto :goto_10c

    :cond_119
    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_116

    aget-object v17, p2, v6

    if-eqz v17, :cond_116

    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_13a

    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_116

    :cond_13a
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_142

    if-ge v14, v15, :cond_116

    :cond_142
    move v15, v14

    move v9, v6

    goto :goto_116

    :cond_145
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    move v6, v13

    :goto_14a
    move/from16 v0, v16

    if-ge v6, v0, :cond_15c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_14a

    :cond_15c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez p3, :cond_163

    return-object v11

    :cond_163
    add-int/lit8 v17, p4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-static {v11, v0, v1, v2, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v17

    return-object v17
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    array-length v0, p1

    goto :goto_3
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-gez p1, :cond_a

    const-string/jumbo v0, ""

    return-object v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_11

    return-object p0

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-gtz v0, :cond_d

    return-object p0

    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_5

    return-object v6

    :cond_5
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo p2, " "

    :cond_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, p1, v5

    if-gtz v4, :cond_1b

    return-object p0

    :cond_1b
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2b

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_2b

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2b
    if-ne v4, v2, :cond_32

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_32
    if-ge v4, v2, :cond_3d

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3d
    new-array v3, v4, [C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v4, :cond_4f

    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_4f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11

    const/4 v7, 0x0

    if-nez p0, :cond_4

    return-object v7

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v7

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/4 v4, 0x1

    :goto_1e
    array-length v7, v0

    if-ge v4, v7, :cond_51

    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    if-ne v6, v1, :cond_2c

    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_2c
    if-eqz p1, :cond_45

    const/4 v7, 0x2

    if-ne v6, v7, :cond_45

    const/4 v7, 0x1

    if-ne v1, v7, :cond_45

    add-int/lit8 v3, v4, -0x1

    if-eq v3, v5, :cond_43

    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    :cond_43
    :goto_43
    move v1, v6

    goto :goto_29

    :cond_45
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    goto :goto_43

    :cond_51
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 12

    const/4 v7, 0x0

    if-nez p0, :cond_4

    return-object v7

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    sget-object v6, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v6

    :cond_d
    if-eqz p1, :cond_18

    const-string/jumbo v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_18
    invoke-static {p0, v7, p2, p3}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_6c

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v6, -0x1

    if-le v1, v6, :cond_63

    if-le v1, v0, :cond_4b

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_41

    move v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v0, v1, v4

    goto :goto_29

    :cond_4b
    if-eqz p3, :cond_59

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_5c

    move v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    :goto_59
    add-int v0, v1, v4

    goto :goto_29

    :cond_5c
    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_63
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_29

    :cond_6c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    if-nez p0, :cond_4

    return-object v6

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    sget-object v6, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v6

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_16
    if-ge v0, v2, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_2f

    if-nez v4, :cond_22

    if-eqz p2, :cond_2b

    :cond_22
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v1, 0x1

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    goto :goto_16

    :cond_2f
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_34
    if-nez v4, :cond_3a

    if-eqz p2, :cond_41

    if-eqz v1, :cond_41

    :cond_3a
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 16

    const/4 v9, 0x0

    const/4 v11, 0x0

    if-nez p0, :cond_5

    return-object v9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    sget-object v9, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v9

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_44

    move v7, v6

    :goto_1b
    if-ge v0, v2, :cond_9e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3f

    if-nez v4, :cond_2b

    if-eqz p3, :cond_bf

    :cond_2b
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    if-ne v7, p2, :cond_32

    move v0, v2

    const/4 v1, 0x0

    :cond_32
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    goto :goto_1b

    :cond_3f
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_bd

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v7, v6

    :goto_50
    if-ge v0, v2, :cond_9e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_70

    if-nez v4, :cond_5c

    if-eqz p3, :cond_bb

    :cond_5c
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    if-ne v7, p2, :cond_63

    move v0, v2

    const/4 v1, 0x0

    :cond_63
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_6b
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    goto :goto_50

    :cond_70
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :goto_75
    if-ge v0, v2, :cond_9e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_99

    if-nez v4, :cond_85

    if-eqz p3, :cond_b9

    :cond_85
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    if-ne v7, p2, :cond_8c

    move v0, v2

    const/4 v1, 0x0

    :cond_8c
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_94
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    goto :goto_75

    :cond_99
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_9e
    move v6, v7

    if-nez v4, :cond_a5

    if-eqz p3, :cond_ac

    if-eqz v1, :cond_ac

    :cond_a5
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    return-object v9

    :cond_b9
    move v6, v7

    goto :goto_94

    :cond_bb
    move v6, v7

    goto :goto_6b

    :cond_bd
    move v7, v6

    goto :goto_75

    :cond_bf
    move v6, v7

    goto/16 :goto_3a
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 9

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_b

    :cond_5
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    return v2

    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_16

    return v2

    :cond_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    return v2

    :cond_e
    array-length v3, p1

    move v1, v2

    :goto_10
    if-ge v1, v3, :cond_1f

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v1, 0x1

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    return v2
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    if-nez p0, :cond_4

    return-object v5

    :cond_4
    const/4 v3, 0x0

    :try_start_5
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get1()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_f
    return-object v3

    :cond_10
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get4()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_1b
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The stripAccents(CharSequence) method requires at least Java6, but got: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get0()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; or a Sun JVM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-get5()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_48} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_48} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_48} :catch_5c
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_48} :catch_52

    :catch_48
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "IllegalArgumentException occurred"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_52
    move-exception v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "SecurityException occurred"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_5c
    move-exception v2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "InvocationTargetException occurred"

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_66
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "IllegalAccessException occurred"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_6

    :cond_5
    return-object p0

    :cond_6
    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_16

    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    return-object v1
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-object p0

    :cond_a
    if-nez p1, :cond_1d

    :goto_c
    if-eqz v0, :cond_36

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_36

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    return-object p0

    :cond_24
    :goto_24
    if-eqz v0, :cond_36

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_36
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    return-object p0

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_1b

    :goto_c
    if-eq v0, v1, :cond_32

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    return-object p0

    :cond_22
    :goto_22
    if-eq v0, v1, :cond_32

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_32
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_7

    const-string/jumbo v0, ""

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    move-object p0, v0

    :cond_f
    return-object p0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-gez p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_18

    const-string/jumbo v0, ""

    return-object v0

    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-gez p2, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    :cond_b
    if-gez p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1c
    if-le p1, p2, :cond_22

    const-string/jumbo v0, ""

    return-object v0

    :cond_22
    if-gez p1, :cond_25

    const/4 p1, 0x0

    :cond_25
    if-gez p2, :cond_28

    const/4 p2, 0x0

    :cond_28
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p0

    :cond_7
    if-nez p1, :cond_d

    const-string/jumbo v1, ""

    return-object v1

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    const-string/jumbo v1, ""

    return-object v1

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p0

    :cond_7
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, ""

    return-object v1

    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_27

    :cond_23
    const-string/jumbo v1, ""

    return-object v1

    :cond_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p1, :cond_a

    :cond_9
    return-object p0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, ""

    return-object v1

    :cond_14
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    return-object p0

    :cond_1c
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    return-object p0

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return-object v3

    :cond_7
    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_24
    return-object v3
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    if-eqz p0, :cond_f

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    return-object v8

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_19

    sget-object v7, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v7

    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_27
    sub-int v7, v6, v0

    if-ge v4, v7, :cond_31

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_38

    :cond_31
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_49

    return-object v8

    :cond_38
    add-int/2addr v5, v3

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_31

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v4, v1, v0

    goto :goto_27

    :cond_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_3a

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_1d

    :cond_2d
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_1d

    :cond_3a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_7
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-object p0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

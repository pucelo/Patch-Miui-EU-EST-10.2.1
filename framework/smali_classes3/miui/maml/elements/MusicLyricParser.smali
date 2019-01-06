.class public Lmiui/maml/elements/MusicLyricParser;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicLyricParser$EntityCompator;,
        Lmiui/maml/elements/MusicLyricParser$Lyric;,
        Lmiui/maml/elements/MusicLyricParser$LyricEntity;,
        Lmiui/maml/elements/MusicLyricParser$LyricHeader;,
        Lmiui/maml/elements/MusicLyricParser$LyricShot;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final INTERVAL_OF_LAST:I = 0x1f40

.field private static final LINE_PARSE_IGNORE:I = 0x1

.field private static final LINE_PARSE_REGULAR:I = 0x2

.field private static final LINE_PARSE_STOP:I = 0x0

.field public static final MAX_VALID_TIME:I = 0x112a880

.field private static final TAG_ALBUM:Ljava/lang/String; = "al"

.field private static final TAG_ARTIST:Ljava/lang/String; = "ar"

.field private static final TAG_EDITOR:Ljava/lang/String; = "by"

.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

.field private static final TAG_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG_TITLE:Ljava/lang/String; = "ti"

.field private static final TAG_VERSION:Ljava/lang/String; = "ve"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTime(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->-get0(Lmiui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v4, v3, :cond_33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_33
    const/4 v1, 0x1

    :goto_34
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_6e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v4, v3, :cond_6b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_6e
    return-void
.end method

.method private static doParse(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    invoke-direct {v1}, Lmiui/maml/elements/MusicLyricParser$LyricHeader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "\r\n"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    array-length v8, v4

    :goto_17
    if-ge v7, v8, :cond_21

    aget-object v2, v4, v7

    invoke-static {v2, v1, v0}, Lmiui/maml/elements/MusicLyricParser;->parseLine(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_35

    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_34

    new-instance v7, Lmiui/maml/elements/MusicLyricParser$EntityCompator;

    invoke-direct {v7}, Lmiui/maml/elements/MusicLyricParser$EntityCompator;-><init>()V

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v5, Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {v5, v1, v0, v6}, Lmiui/maml/elements/MusicLyricParser$Lyric;-><init>(Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    :cond_34
    return-object v5

    :cond_35
    const/4 v9, 0x1

    if-ne v3, v9, :cond_39

    const/4 v6, 0x1

    :cond_39
    add-int/lit8 v7, v7, 0x1

    goto :goto_17
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v2, 0x2

    :try_start_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-int v4, v8

    const/4 v3, 0x0

    const/16 v6, 0x3c

    array-length v7, p0

    add-int/lit8 v1, v7, -0x2

    :goto_17
    if-ltz v1, :cond_26

    aget-object v7, p0, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v6

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_26
    mul-int/lit16 v7, v3, 0x3e8

    add-int/2addr v4, v7

    const v7, 0x112a880

    if-ge v4, v7, :cond_36

    new-instance v7, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-direct {v7, v4, p2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return v2

    :catch_37
    move-exception v0

    const/4 v2, 0x1

    goto :goto_36
.end method

.method private static parseHeader(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;)I
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_14

    :cond_12
    const/4 v5, 0x1

    return v5

    :cond_14
    const/4 v2, 0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "al"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->album:Ljava/lang/String;

    :goto_2a
    return v2

    :cond_2b
    const-string/jumbo v5, "ar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->artist:Ljava/lang/String;

    goto :goto_2a

    :cond_37
    const-string/jumbo v5, "ti"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->title:Ljava/lang/String;

    goto :goto_2a

    :cond_43
    const-string/jumbo v5, "by"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->editor:Ljava/lang/String;

    goto :goto_2a

    :cond_4f
    const-string/jumbo v5, "ve"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    iput-object v4, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->version:Ljava/lang/String;

    goto :goto_2a

    :cond_5b
    const-string/jumbo v5, "offset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    :try_start_64
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6a} :catch_6b

    goto :goto_2a

    :catch_6b
    move-exception v0

    const/4 v2, 0x1

    goto :goto_2a

    :cond_6e
    const/4 v2, 0x1

    goto :goto_2a
.end method

.method private static parseLine(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmiui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    return v8

    :cond_c
    sget-object v8, Lmiui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v8, "]"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_25

    const/4 v8, 0x1

    return v8

    :cond_25
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "["

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_37

    const/4 v8, 0x1

    return v8

    :cond_37
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    const-string/jumbo v8, "]"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    array-length v9, v1

    :goto_45
    if-ge v8, v9, :cond_78

    aget-object v6, v1, v8

    const-string/jumbo v10, "["

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_55

    :cond_52
    :goto_52
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    :cond_55
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x2

    if-lt v10, v11, :cond_52

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_73

    invoke-static {v7, p2, v0}, Lmiui/maml/elements/MusicLyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    goto :goto_52

    :cond_73
    invoke-static {v6, p1}, Lmiui/maml/elements/MusicLyricParser;->parseHeader(Ljava/lang/String;Lmiui/maml/elements/MusicLyricParser$LyricHeader;)I

    move-result v4

    goto :goto_52

    :cond_78
    return v4
.end method

.method public static parseLyric(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    :try_start_3
    invoke-static {p0}, Lmiui/maml/elements/MusicLyricParser;->doParse(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/elements/MusicLyricParser;->correctTime(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-object v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

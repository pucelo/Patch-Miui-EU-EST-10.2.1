.class public Landroid/widget/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# static fields
.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field private static final WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field public static final WEB_URLS:I = 0x1

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sput-object v0, Landroid/widget/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const-string/jumbo v0, "[a-zA-Z0-9\\.]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IILjava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-eqz p6, :cond_1e

    invoke-interface {p6, p1, v2, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_1e
    new-instance v3, Landroid/widget/LinkSpec;

    invoke-direct {v3}, Landroid/widget/LinkSpec;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p5, v1, p7}, Landroid/widget/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    iput v2, v3, Landroid/widget/LinkSpec;->start:I

    iput v0, v3, Landroid/widget/LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_36
    return-void
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "IIZ)V"
        }
    .end annotation

    if-eqz p4, :cond_13

    move v6, p2

    :goto_3
    if-ltz v6, :cond_16

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_16

    move p2, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_13
    add-int/lit8 v6, p2, -0x1

    goto :goto_3

    :cond_16
    if-eqz p4, :cond_31

    add-int/lit8 v6, p3, -0x1

    :goto_1a
    if-ltz v6, :cond_33

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_33

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_33

    add-int/lit8 p3, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_31
    move v6, p3

    goto :goto_1a

    :cond_33
    sub-int v1, p3, p2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_39

    return-void

    :cond_39
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_58
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    new-instance v10, Landroid/widget/LinkSpec;

    invoke-direct {v10}, Landroid/widget/LinkSpec;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v10, Landroid/widget/LinkSpec;->start:I

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v10, Landroid/widget/LinkSpec;->end:I

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_97
    return-void
.end method

.method private static final gatherWebLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "IIZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p4, :cond_16

    move v8, p2

    :goto_4
    if-ltz v8, :cond_19

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/widget/Linkify;->isValidChar(CLjava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_19

    move p2, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_16
    add-int/lit8 v8, p2, -0x1

    goto :goto_4

    :cond_19
    if-eqz p4, :cond_36

    add-int/lit8 v8, p3, -0x1

    :goto_1d
    if-ltz v8, :cond_38

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v8, v0, :cond_38

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Landroid/widget/Linkify;->WEB_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/widget/Linkify;->isValidChar(CLjava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_38

    add-int/lit8 p3, v8, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_36
    move v8, p3

    goto :goto_1d

    :cond_38
    sget-object v4, Lmiui/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "http://"

    aput-object v0, v5, v2

    const-string/jumbo v0, "https://"

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const-string/jumbo v0, "rtsp://"

    const/4 v1, 0x2

    aput-object v0, v5, v1

    sget-object v6, Landroid/widget/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Landroid/widget/Linkify;->gatherLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IILjava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method static final getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinkSpec;",
            ">;"
        }
    .end annotation

    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    if-ne p2, v2, :cond_7

    :cond_5
    const/4 v2, 0x0

    return-object v2

    :cond_7
    if-gt p1, p2, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eq p1, p2, :cond_20

    const/4 v0, 0x1

    :goto_11
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_18

    invoke-static {v1, p0, p1, p2, v0}, Landroid/widget/Linkify;->gatherWebLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V

    :cond_18
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_1f

    invoke-static {v1, p0, p1, p2, v0}, Landroid/widget/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Ljava/lang/CharSequence;IIZ)V

    :cond_1f
    return-object v1

    :cond_20
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isValidChar(CLjava/util/regex/Pattern;)Z
    .registers 4

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 13

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    array-length v0, p1

    if-ge v8, v0, :cond_4c

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v7, 0x1

    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4c
    if-nez v7, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_61
    return-object p0

    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_9
.end method

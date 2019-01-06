.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$BytesResult;,
        Landroid/text/format/Formatter$RoundedBytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_SHORTER:I = 0x1

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final PETABYTE:Landroid/icu/util/MeasureUnit;

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;


# direct methods
.method static synthetic -get0()Landroid/icu/util/MeasureUnit;
    .registers 1

    sget-object v0, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/icu/text/UnicodeSetSpanner;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v2, "[[:Zs:][:Cf:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetSpanner;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/text/format/Formatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-static {}, Landroid/text/format/Formatter;->createPetaByte()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_14

    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_14
    return-object p1
.end method

.method private static createPetaByte()Landroid/icu/util/MeasureUnit;
    .registers 6

    :try_start_0
    const-class v2, Landroid/icu/util/MeasureUnit;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "digital"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "petabyte"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/MeasureUnit;
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v2

    :catch_2d
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to create petabyte MeasureUnit"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-object p0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .registers 15

    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter$RoundedBytesResult;->roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iget v7, v5, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {v2, v7}, Landroid/text/format/Formatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v3

    iget v7, v5, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    float-to-double v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v7, v5, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v8, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-eq v7, v8, :cond_2a

    iget-object v7, v5, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v8, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    if-ne v7, v8, :cond_38

    :cond_2a
    iget-object v7, v5, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {p0, v7}, Landroid/text/format/Formatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v6

    :goto_30
    new-instance v7, Landroid/text/format/Formatter$BytesResult;

    iget-wide v8, v5, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    invoke-direct {v7, v1, v6, v8, v9}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7

    :cond_38
    iget v7, v5, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    iget-object v8, v5, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Formatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/format/Formatter;->deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Landroid/text/format/Formatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-virtual {v7, v4}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_30
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_6

    const-string/jumbo v1, ""

    return-object v1

    :cond_6
    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter$RoundedBytesResult;->roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/format/Formatter;->formatRoundedBytesResult(Landroid/content/Context;Landroid/text/format/Formatter$RoundedBytesResult;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .registers 7

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, v1, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    new-instance v1, Landroid/icu/util/Measure;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatRoundedBytesResult(Landroid/content/Context;Landroid/text/format/Formatter$RoundedBytesResult;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    iget v3, p1, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {v1, v3}, Landroid/text/format/Formatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v2

    iget-object v3, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v4, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-eq v3, v4, :cond_16

    iget-object v3, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v4, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    if-ne v3, v4, :cond_38

    :cond_16
    iget v3, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v4, v5}, Landroid/text/format/Formatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x104021c

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_38
    iget v3, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    iget-object v4, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Formatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 16

    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/32 v8, 0x15180

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1a

    const-wide/32 v8, 0x15180

    div-long v8, v6, v8

    long-to-int v0, v8

    const v8, 0x15180

    mul-int/2addr v8, v0

    int-to-long v8, v8

    sub-long/2addr v6, v8

    :cond_1a
    const-wide/16 v8, 0xe10

    cmp-long v8, v6, v8

    if-ltz v8, :cond_29

    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    long-to-int v1, v8

    mul-int/lit16 v8, v1, 0xe10

    int-to-long v8, v8

    sub-long/2addr v6, v8

    :cond_29
    const-wide/16 v8, 0x3c

    cmp-long v8, v6, v8

    if-ltz v8, :cond_38

    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    long-to-int v4, v8

    mul-int/lit8 v8, v4, 0x3c

    int-to-long v8, v8

    sub-long/2addr v6, v8

    :cond_38
    long-to-int v5, v6

    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    sget-object v8, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v2, v8}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v3

    const/4 v8, 0x2

    if-lt v0, v8, :cond_5b

    add-int/lit8 v8, v1, 0xc

    div-int/lit8 v8, v8, 0x18

    add-int/2addr v0, v8

    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_5b
    if-lez v0, :cond_81

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v9, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v9, v10, v11}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v9, v10, v11}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_81
    const/4 v8, 0x2

    if-lt v1, v8, :cond_99

    add-int/lit8 v8, v4, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v1, v8

    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_99
    if-lez v1, :cond_bf

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v9, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v9, v10, v11}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v9, v10, v11}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_bf
    const/4 v8, 0x2

    if-lt v4, v8, :cond_d7

    add-int/lit8 v8, v5, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v4, v8

    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_d7
    if-lez v4, :cond_fd

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v9, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v9, v10, v11}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v9, v10, v11}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_fd
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v3, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14

    const-wide/16 v8, 0x1

    const-wide/32 v6, 0xea60

    add-long v4, p1, v6

    sub-long/2addr v4, v8

    div-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_14

    cmp-long v4, v2, v8

    if-nez v4, :cond_2e

    :cond_14
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    sget-object v4, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v4}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v1

    new-instance v4, Landroid/icu/util/Measure;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v4, v5, v6}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v4}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2e
    mul-long v4, v2, v6

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .registers 4

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    instance-of v1, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_16

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    :cond_16
    return-object v0
.end method

.method private static getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_c

    const v0, 0x10400ed

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const v0, 0x1040513

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

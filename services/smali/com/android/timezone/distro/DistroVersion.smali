.class public Lcom/android/timezone/distro/DistroVersion;
.super Ljava/lang/Object;
.source "DistroVersion.java"


# static fields
.field public static final CURRENT_FORMAT_MAJOR_VERSION:I = 0x1

.field public static final CURRENT_FORMAT_MINOR_VERSION:I = 0x1

.field public static final DISTRO_VERSION_FILE_LENGTH:I

.field private static final DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_STRING_LENGTH:I

.field private static final FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

.field private static final REVISION_LENGTH:I = 0x3

.field private static final REVISION_PATTERN:Ljava/util/regex/Pattern;

.field private static final RULES_VERSION_LENGTH:I = 0x5

.field private static final RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final formatMajorVersion:I

.field public final formatMinorVersion:I

.field public final revision:I

.field public final rulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

    sget-object v0, Lcom/android/timezone/distro/DistroVersion;->FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    const-string/jumbo v0, "(\\d{3})\\.(\\d{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(\\d{4}\\w)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(\\d{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    sget v0, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-static {p2}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    sget-object v0, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid rulesVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iput-object p3, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    return-void
.end method

.method private static from3DigitVersionString(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    const-string/jumbo v1, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    new-instance v3, Lcom/android/timezone/distro/DistroException;

    const-string/jumbo v4, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-direct {v3, v4}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    :try_start_13
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1a} :catch_1c

    move-result v3

    return v3

    :catch_1c
    move-exception v0

    new-instance v3, Lcom/android/timezone/distro/DistroException;

    const-string/jumbo v4, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-direct {v3, v4, v0}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static fromBytes([B)Lcom/android/timezone/distro/DistroVersion;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_7
    sget-object v7, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_56

    new-instance v7, Lcom/android/timezone/distro/DistroException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid distro version string: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_34} :catch_34

    :catch_34
    move-exception v1

    new-instance v7, Lcom/android/timezone/distro/DistroException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Distro version string too short: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_56
    const/4 v7, 0x1

    :try_start_57
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/timezone/distro/DistroVersion;

    invoke-static {v2}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, v8, v9, v6, v10}, Lcom/android/timezone/distro/DistroVersion;-><init>(IILjava/lang/String;I)V
    :try_end_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_57 .. :try_end_7b} :catch_34

    return-object v7
.end method

.method public static isCompatibleWithThisDevice(Lcom/android/timezone/distro/DistroVersion;)Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    if-ne v0, v2, :cond_d

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-gt v0, v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method private static to3DigitVersionString(I)Ljava/lang/String;
    .registers 7

    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "%03d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_16
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v1

    return-object v1

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toBytes(IILjava/lang/String;I)[B
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toFormatVersionString(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validate3DigitVersion(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    if-ltz p0, :cond_6

    const/16 v0, 0x3e7

    if-le p0, v0, :cond_20

    :cond_6
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected 0 <= value <= 999, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/timezone/distro/DistroVersion;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/timezone/distro/DistroVersion;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v2, v0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    if-eq v1, v2, :cond_1c

    return v3

    :cond_1c
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget v2, v0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-eq v1, v2, :cond_23

    return v3

    :cond_23
    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    iget v2, v0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    if-eq v1, v2, :cond_2a

    return v3

    :cond_2a
    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    add-int v0, v1, v2

    return v0
.end method

.method public toBytes()[B
    .registers 5

    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v3, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/timezone/distro/DistroVersion;->toBytes(IILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DistroVersion{formatMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", formatMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

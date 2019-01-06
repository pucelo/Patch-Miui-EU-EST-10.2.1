.class public Lcom/miui/internal/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field private static final PATTERN_ALPHABET:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sContextCache:Lmiui/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstalledPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/search/SearchUtils;->PATTERN_ALPHABET:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Levenshtein([C[C)I
    .registers 14

    const/4 v9, 0x0

    array-length v8, p0

    array-length v10, p1

    if-ge v8, v10, :cond_8

    move-object v7, p0

    move-object p0, p1

    move-object p1, v7

    :cond_8
    array-length v6, p0

    array-length v5, p1

    add-int/lit8 v8, v5, 0x1

    new-array v0, v8, [I

    const/4 v4, 0x0

    :goto_f
    if-gt v4, v5, :cond_16

    aput v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_16
    const/4 v3, 0x1

    :goto_17
    if-gt v3, v6, :cond_4f

    add-int/lit8 v2, v3, -0x1

    aput v3, v0, v9

    const/4 v4, 0x1

    :goto_1e
    if-gt v4, v5, :cond_4c

    aget v1, v0, v4

    aget v8, v0, v4

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v8, v3, -0x1

    aget-char v8, p0, v8

    add-int/lit8 v11, v4, -0x1

    aget-char v11, p1, v11

    if-ne v8, v11, :cond_4a

    move v8, v9

    :goto_31
    add-int/2addr v8, v2

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    add-int/lit8 v8, v4, -0x1

    aget v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    aget v10, v0, v4

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    move v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_4a
    const/4 v8, 0x1

    goto :goto_31

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_4f
    aget v8, v0, v5

    return v8
.end method

.method public static Levenshtein([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/util/Comparator",
            "<TT;>;)I"
        }
    .end annotation

    const/4 v9, 0x0

    array-length v8, p0

    array-length v10, p1

    if-ge v8, v10, :cond_8

    move-object v7, p0

    move-object p0, p1

    move-object p1, v7

    :cond_8
    array-length v6, p0

    array-length v5, p1

    add-int/lit8 v8, v5, 0x1

    new-array v0, v8, [I

    const/4 v4, 0x0

    :goto_f
    if-gt v4, v5, :cond_16

    aput v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_16
    const/4 v3, 0x1

    :goto_17
    if-gt v3, v6, :cond_53

    add-int/lit8 v2, v3, -0x1

    aput v3, v0, v9

    const/4 v4, 0x1

    :goto_1e
    if-gt v4, v5, :cond_50

    aget v1, v0, v4

    aget v8, v0, v4

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v8, v3, -0x1

    aget-object v8, p0, v8

    add-int/lit8 v11, v4, -0x1

    aget-object v11, p1, v11

    invoke-interface {p2, v8, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_4e

    move v8, v9

    :goto_35
    add-int/2addr v8, v2

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    add-int/lit8 v8, v4, -0x1

    aget v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    aget v10, v0, v4

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v0, v4

    move v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_4e
    const/4 v8, 0x1

    goto :goto_35

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_53
    aget v8, v0, v5

    return v8
.end method

.method public static clearPackageExistedCache()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    return-void
.end method

.method static doPinyinMatch(Ljava/lang/String;Ljava/lang/String;)D
    .registers 8

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_60

    sget-object v2, Lcom/miui/internal/search/SearchUtils;->PATTERN_ALPHABET:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_26
    cmpl-double v2, v0, v4

    if-nez v2, :cond_35

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-wide v0, 0x3fe999999999999aL    # 0.8

    :cond_35
    cmpl-double v2, v0, v4

    if-nez v2, :cond_60

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_94

    const-wide v0, 0x3fe3333333333333L    # 0.6

    :goto_44
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/internal/search/SearchUtils;->Levenshtein([C[C)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    :cond_60
    const-string/jumbo v2, "Utils"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_93

    const-string/jumbo v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    return-wide v0

    :cond_94
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_44
.end method

.method static doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D
    .registers 10

    const-wide/16 v6, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_11

    move-object v2, p0

    move-object p0, p1

    move-object p1, v2

    :cond_11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_68

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_27
    cmpl-double v3, v0, v6

    if-nez v3, :cond_36

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    const-wide v0, 0x3fe999999999999aL    # 0.8

    :cond_36
    cmpl-double v3, v0, v6

    if-nez v3, :cond_45

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    const-wide v0, 0x3fe3333333333333L    # 0.6

    :cond_45
    cmpl-double v3, v0, v6

    if-nez v3, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/internal/search/SearchUtils;->Levenshtein([C[C)I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v0, v6, v4

    :cond_68
    const-string/jumbo v3, "Utils"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9b

    const-string/jumbo v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    return-wide v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "bool"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_18} :catch_1a

    move-result v2

    return v2

    :catch_1a
    move-exception v0

    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 8

    move-object v2, p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_55

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    return-object p0

    :cond_12
    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    if-eqz v3, :cond_27

    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    invoke-interface {v3, p1}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    invoke-interface {v3, p1}, Lmiui/util/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    return-object v3

    :cond_27
    const/4 v3, 0x3

    :try_start_28
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    if-nez v3, :cond_38

    new-instance v3, Lmiui/util/cache/LruCache;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lmiui/util/cache/LruCache;-><init>(I)V

    sput-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    :cond_38
    sget-object v3, Lcom/miui/internal/search/SearchUtils;->sContextCache:Lmiui/util/cache/Cache;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v1, v4}, Lmiui/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_3e} :catch_3f

    return-object v1

    :catch_3f
    move-exception v0

    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_55
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Application package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    return-object v3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/text/ChinesePinyinConverter$Token;

    iget-object v3, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_18} :catch_1a

    move-result-object v2

    return-object v2

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string/jumbo v2, "com.android.settings"

    invoke-static {p0, v2}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_33} :catch_35

    move-result-object v2

    return-object v2

    :catch_35
    move-exception v0

    :cond_36
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .registers 2

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static isOldmanMode()Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    sget-object v2, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    if-nez v2, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    :cond_10
    sget-object v2, Lcom/miui/internal/search/SearchUtils;->sInstalledPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    return v2

    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method public static isSecondSpace()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static logCost(DDLjava/lang/Object;)V
    .registers 9

    const-string/jumbo v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-double v2, p2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x400

    new-array v0, v5, [C

    :goto_e
    :try_start_e
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    if-lez v3, :cond_20

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1b

    goto :goto_e

    :catchall_1b
    move-exception v5

    :try_start_1c
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_38

    :goto_1f
    throw v5

    :cond_20
    :try_start_20
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1b

    :try_start_29
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    :goto_2c
    return-object v5

    :catch_2d
    move-exception v2

    const-string/jumbo v6, "Utils"

    const-string/jumbo v7, "close InputStream failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :catch_38
    move-exception v2

    const-string/jumbo v6, "Utils"

    const-string/jumbo v7, "close InputStream failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public static removeViaFeature(Ljava/lang/String;)Z
    .registers 9

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v4

    :cond_9
    const-string/jumbo v3, "&&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v3, v4

    :goto_12
    if-ge v3, v5, :cond_33

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string/jumbo v6, "!"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v2, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_29
    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v6, v2, :cond_30

    return v7

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_33
    return v4
.end method

.method public static removeViaSecondSpace(Z)Z
    .registers 2

    if-nez p0, :cond_7

    invoke-static {}, Lcom/miui/internal/search/SearchUtils;->isSecondSpace()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.class public Lorg/apache/miui/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    const/16 v7, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "EnumClass must be defined."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    if-eqz v0, :cond_41

    move v1, v2

    :goto_15
    const-string/jumbo v4, "%s does not seem to be an Enum type"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v1, v4, v5}, Lorg/apache/miui/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length v1, v0

    if-gt v1, v7, :cond_43

    move v1, v2

    :goto_23
    const-string/jumbo v4, "Cannot store %s %s values in %s bits"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Lorg/apache/miui/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_41
    move v1, v3

    goto :goto_15

    :cond_43
    move v1, v3

    goto :goto_23
.end method

.method public static generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)J"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    goto :goto_c

    :cond_22
    return-wide v2
.end method

.method public static varargs generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)J"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    :try_start_4
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    return-object v1
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    const/4 v3, 0x0

    array-length v4, v2

    :goto_d
    if-ge v3, v4, :cond_1b

    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    return-object v1
.end method

.method public static isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    :try_start_4
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_9

    const/4 v1, 0x1

    return v1

    :catch_9
    move-exception v0

    return v1
.end method

.method public static processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v1

    :goto_10
    if-ge v3, v4, :cond_29

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    shl-int v5, v6, v5

    int-to-long v6, v5

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_26

    invoke-virtual {v2, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_29
    return-object v2
.end method

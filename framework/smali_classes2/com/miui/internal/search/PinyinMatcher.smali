.class public Lcom/miui/internal/search/PinyinMatcher;
.super Ljava/lang/Object;
.source "PinyinMatcher.java"


# static fields
.field private static SHENGMU:[Ljava/lang/String;

.field private static YUNMU:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "b"

    aput-object v1, v0, v3

    const-string/jumbo v1, "p"

    aput-object v1, v0, v4

    const-string/jumbo v1, "m"

    aput-object v1, v0, v5

    const-string/jumbo v1, "f"

    aput-object v1, v0, v6

    const-string/jumbo v1, "d"

    aput-object v1, v0, v7

    const-string/jumbo v1, "t"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "n"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "l"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "g"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "k"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "h"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "j"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "q"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "x"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "z"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "c"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "s"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "ch"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "sh"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "r"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "y"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "w"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/internal/search/PinyinMatcher;->SHENGMU:[Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "a"

    aput-object v1, v0, v3

    const-string/jumbo v1, "o"

    aput-object v1, v0, v4

    const-string/jumbo v1, "e"

    aput-object v1, v0, v5

    const-string/jumbo v1, "i"

    aput-object v1, v0, v6

    const-string/jumbo v1, "u"

    aput-object v1, v0, v7

    const-string/jumbo v1, "v"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ai"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ei"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "ui"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "ao"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "ou"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "iu"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "ia"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "ie"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "ve"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "er"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "an"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "en"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "in"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "un"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "vn"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "ang"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "eng"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "ing"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "ong"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "iao"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "ian"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "iang"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "iong"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "ua"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "uo"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "uai"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "uan"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "van"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "uang"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/internal/search/PinyinMatcher;->YUNMU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pinyinLevenshtein(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/miui/internal/search/PinyinMatcher;->splitPinyin(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/miui/internal/search/PinyinMatcher;->splitPinyin(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/internal/search/PinyinMatcher$1;

    invoke-direct {v2}, Lcom/miui/internal/search/PinyinMatcher$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/miui/internal/search/SearchUtils;->Levenshtein([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static splitPinyin(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 10

    const/4 v4, 0x0

    if-eqz p1, :cond_c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Correction not supported yet"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_66

    sget-object v5, Lcom/miui/internal/search/PinyinMatcher;->SHENGMU:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_1b
    if-ge v3, v6, :cond_30

    aget-object v1, v5, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_30
    sget-object v5, Lcom/miui/internal/search/PinyinMatcher;->YUNMU:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_34
    if-ge v3, v6, :cond_11

    aget-object v2, v5, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

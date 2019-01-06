.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static sFullyInitialized:Z

.field private static final sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    :cond_e
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_18

    :cond_3c
    return-void
.end method

.method public static fillCache(Landroid/content/Context;)V
    .registers 20

    sget-boolean v13, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    if-eqz v13, :cond_5

    return-void

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_f
    if-ge v13, v15, :cond_7e

    aget-object v8, v14, v13

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_22

    new-instance v13, Ljava/util/IllformedLocaleException;

    const-string/jumbo v14, "Bad locale entry in locale_config.xml"

    invoke-direct {v13, v14}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_22
    new-instance v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_46

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_46
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v10

    if-eqz v10, :cond_7b

    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7b

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    new-instance v17, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_7e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "development_settings_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_bd

    const/4 v4, 0x1

    :goto_8d
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getPseudoLocales()[Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_93
    if-ge v13, v15, :cond_c9

    aget-object v8, v14, v13

    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    if-eqz v4, :cond_bf

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :goto_ba
    add-int/lit8 v13, v13, 0x1

    goto :goto_93

    :cond_bd
    const/4 v4, 0x0

    goto :goto_8d

    :cond_bf
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    :cond_c9
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_d4
    if-ge v13, v15, :cond_154

    aget-object v8, v14, v13

    new-instance v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v6, v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_115

    const/4 v2, 0x0

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_121

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    :cond_108
    :goto_108
    if-eqz v2, :cond_115

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v16

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_115
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_d4

    :cond_121
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_108

    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_108

    :cond_154
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_176

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v6, v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    goto :goto_15e

    :cond_176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    return-void
.end method

.method private static getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    if-eqz p2, :cond_1f

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_26

    return v2

    :cond_26
    return v1
.end method

.method public static getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    if-nez p2, :cond_3c

    const/4 v3, 0x0

    :goto_6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sget-object v5, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {p1, v1, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_15

    if-eqz p2, :cond_41

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_3c
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_41
    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_4c
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_58
    return-object v4
.end method

.method public static getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 4

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    return-object v1

    :cond_18
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_17
.end method

.method private static getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object v1
.end method

.method public static updateSimCountries(Landroid/content/Context;)V
    .registers 5

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_e

    :cond_32
    return-void
.end method

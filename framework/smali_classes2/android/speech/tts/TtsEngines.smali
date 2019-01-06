.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCALE_DELIMITER_NEW:Ljava/lang/String; = "_"

.field private static final LOCALE_DELIMITER_OLD:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "TtsEngines"

.field private static final XML_TAG_NAME:Ljava/lang/String; = "tts-engine"

.field private static final sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v5, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_c
    if-ge v6, v8, :cond_1f

    aget-object v2, v7, v6

    :try_start_10
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_1c} :catch_4e

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_1f
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_2f
    if-ge v5, v7, :cond_45

    aget-object v0, v6, v5

    :try_start_33
    new-instance v8, Ljava/util/Locale;

    const-string/jumbo v9, ""

    invoke-direct {v8, v9, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/util/MissingResourceException; {:try_start_33 .. :try_end_42} :catch_4c

    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_45
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    return-void

    :catch_4c
    move-exception v1

    goto :goto_42

    :catch_4e
    move-exception v1

    goto :goto_1c
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_32

    new-instance v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    :goto_1a
    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    move-result v3

    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    invoke-direct {p0, v2}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    return-object v0

    :cond_2d
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_32
    return-object v3
.end method

.method private isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_c

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public static normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 7

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_15

    move-object v1, v3

    :cond_15
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2a

    move-object v0, v2

    :cond_2a
    new-instance v4, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    return-object v7

    :cond_9
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v3, v4

    :goto_12
    if-ge v3, v5, :cond_32

    aget-object v2, v1, v3

    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2f

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_32
    return-object v7
.end method

.method private settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 16

    const/4 v12, 0x0

    const/4 v5, 0x0

    :try_start_2
    const-string/jumbo v9, "android.speech.tts"

    invoke-virtual {p1, p2, v9}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-nez v5, :cond_2b

    const-string/jumbo v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No meta-data found for :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_25} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_25} :catch_c1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_95
    .catchall {:try_start_2 .. :try_end_25} :catchall_10e

    if-eqz v5, :cond_2a

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2a
    return-object v12

    :cond_2b
    :try_start_2b
    iget-object v9, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    :cond_31
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8f

    const/4 v9, 0x2

    if-ne v8, v9, :cond_31

    const-string/jumbo v9, "tts-engine"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    const-string/jumbo v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uses unknown tag :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_71} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_71} :catch_c1
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_71} :catch_95
    .catchall {:try_start_2b .. :try_end_71} :catchall_10e

    if-eqz v5, :cond_76

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_76
    return-object v12

    :cond_77
    :try_start_77
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v9, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    invoke-virtual {v6, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_89
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_89} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_89} :catch_c1
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_89} :catch_95
    .catchall {:try_start_77 .. :try_end_89} :catchall_10e

    if-eqz v5, :cond_8e

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8e
    return-object v7

    :cond_8f
    if-eqz v5, :cond_94

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_94
    return-object v12

    :catch_95
    move-exception v3

    :try_start_96
    const-string/jumbo v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing metadata for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_96 .. :try_end_bb} :catchall_10e

    if-eqz v5, :cond_c0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c0
    return-object v12

    :catch_c1
    move-exception v4

    :try_start_c2
    const-string/jumbo v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing metadata for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_c2 .. :try_end_e7} :catchall_10e

    if-eqz v5, :cond_ec

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_ec
    return-object v12

    :catch_ed
    move-exception v2

    :try_start_ee
    const-string/jumbo v9, "TtsEngines"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not load resources for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_ee .. :try_end_108} :catchall_10e

    if-eqz v5, :cond_10d

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_10d
    return-object v12

    :catchall_10e
    move-exception v9

    if-eqz v5, :cond_114

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_114
    throw v9
.end method

.method public static toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;
    .registers 9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const-string/jumbo v2, ""

    aput-object v2, v1, v5

    const-string/jumbo v2, ""

    aput-object v2, v1, v6

    :try_start_15
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3
    :try_end_2a
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_2a} :catch_2b

    return-object v1

    :catch_2b
    move-exception v0

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "eng"

    aput-object v3, v2, v4

    const-string/jumbo v3, "USA"

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    return-object v2
.end method

.method private updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/16 v11, 0x2c

    const/4 v7, 0x0

    const/16 v10, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    :goto_1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_20
    const-string/jumbo v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v8, v4

    move v6, v7

    :goto_2b
    if-ge v6, v8, :cond_60

    aget-object v5, v4, v6

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4e

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    if-eqz v1, :cond_51

    const/4 v1, 0x0

    :goto_42
    const/4 v2, 0x1

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    :goto_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_51
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_55
    if-eqz v1, :cond_5c

    const/4 v1, 0x0

    :goto_58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_5c
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_60
    if-nez v2, :cond_1b

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b
.end method


# virtual methods
.method public getDefaultEngine()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_synth"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.TTS_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    return-object v3

    :cond_2d
    return-object v5
.end method

.method public getEngines()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.TTS_SERVICE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    return-object v7

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v3}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3e
    sget-object v7, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public getHighestRankedEngineName()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/speech/tts/TtsEnginesInjector;->getRecommendEngineForLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v2, :cond_2a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v2

    :cond_2a
    return-object v4
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4

    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 8

    invoke-static {p2, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    return-object v2

    :cond_f
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_38

    const-string/jumbo v2, "TtsEngines"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse locale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", returning en_US instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_38
    return-object v1
.end method

.method public getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 11

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x10080

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3c

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_3c

    invoke-direct {p0, v4, v2}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_3c
    return-object v8
.end method

.method public isEngineInstalled(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 15

    const/4 v12, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    const-string/jumbo v7, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_87

    const-string/jumbo v8, "[-_]"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v8, v6, v9

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    array-length v8, v6

    if-nez v8, :cond_4c

    const-string/jumbo v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to convert "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to a valid Locale object. Only"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " separators"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_4c
    array-length v8, v6

    if-le v8, v12, :cond_78

    const-string/jumbo v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to convert "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to a valid Locale object. Too"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " many separators"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_78
    array-length v8, v6

    if-lt v8, v10, :cond_82

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_82
    array-length v8, v6

    if-lt v8, v12, :cond_87

    aget-object v7, v6, v10

    :cond_87
    sget-object v8, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_92

    move-object v2, v4

    :cond_92
    sget-object v8, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_9d

    move-object v0, v3

    :cond_9d
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v0, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a2
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_a8
    .catch Ljava/util/MissingResourceException; {:try_start_a2 .. :try_end_a8} :catch_a9

    return-object v5

    :catch_a9
    move-exception v1

    const-string/jumbo v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to convert "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to a valid Locale object."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11
.end method

.method public declared-synchronized updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_locale"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    invoke-direct {p0, v1, p1, v2}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_locale"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2e

    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    const-string/jumbo v2, ""
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_14

    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

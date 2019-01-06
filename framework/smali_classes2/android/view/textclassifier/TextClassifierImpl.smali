.class final Landroid/view/textclassifier/TextClassifierImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;,
        Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierImpl"

.field private static final MODEL_DIR:Ljava/lang/String; = "/etc/textclassifier/"

.field private static final MODEL_FILE_REGEX:Ljava/lang/String; = "textclassifier\\.smartselection\\.(.*)\\.model"

.field private static final UPDATED_MODEL_FILE_PATH:Ljava/lang/String; = "/data/misc/textclassifier/textclassifier.smartselection.model"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLocale:Ljava/util/Locale;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mModelFilePaths:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/view/textclassifier/TextClassifierConstants;

.field private mSmartSelection:Landroid/view/textclassifier/SmartSelection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field

.field private final mSmartSelectionLock:Ljava/lang/Object;

.field private mVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/CharSequence;II)I
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "TextClassifierImpl"

    const-string/jumbo v2, "Error closing file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private createClassificationResult([Landroid/view/textclassifier/SmartSelection$ClassificationResult;Ljava/lang/CharSequence;)Landroid/view/textclassifier/TextClassification;
    .registers 16

    const/4 v10, 0x0

    new-instance v11, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v11}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    array-length v8, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v8, :cond_20

    aget-object v11, p1, v1

    iget-object v11, v11, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    aget-object v12, p1, v1

    iget v12, v12, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    invoke-virtual {v0, v11, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImpl;->getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->getLogType(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/textclassifier/TextClassification$Builder;->setLogType(I)Landroid/view/textclassifier/TextClassification$Builder;

    iget-object v11, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v9, v12}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_78

    iget-object v11, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v3, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    :goto_42
    if-eqz v7, :cond_6b

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_6b

    invoke-virtual {v0, v3}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v11

    iget-object v12, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Landroid/view/textclassifier/TextClassification;->createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "android"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    iget-object v10, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->getLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    :cond_6b
    :goto_6b
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getVersionInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/textclassifier/TextClassification$Builder;->setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v10

    return-object v10

    :cond_78
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_42

    :cond_7b
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v5, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_93

    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_93
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_a2

    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_a2
    if-eqz v4, :cond_a8

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a8
    invoke-virtual {v0, v10}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    goto :goto_6b
.end method

.method private destroySmartSelectionIfExistsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    invoke-virtual {v0}, Landroid/view/textclassifier/SmartSelection;->close()V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    :cond_c
    return-void
.end method

.method private findBestSupportedLocaleLocked(Landroid/os/LocaleList;)Ljava/util/Locale;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-static {v1}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getFactoryModelFilePathsLocked()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getUpdatedModelLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-static {v0, v2}, Ljava/util/Locale;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v4

    return-object v4

    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method private getFactoryModelFilePathsLocked()Ljava/util/Map;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v10, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    if-nez v10, :cond_57

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "/etc/textclassifier/"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    const-string/jumbo v10, "textclassifier\\.smartselection\\.(.*)\\.model"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    array-length v9, v7

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v9, :cond_55

    aget-object v4, v7, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_52

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_55
    iput-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    :cond_57
    iget-object v10, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    return-object v10
.end method

.method private getFdLocked(Ljava/util/Locale;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_2
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/misc/textclassifier/textclassifier.smartselection.model"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    invoke-static {v8, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_f} :catch_2c

    move-result-object v5

    :goto_10
    :try_start_10
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getFactoryModelFilePathsLocked()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2f

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    invoke-static {v8, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_26} :catch_31

    move-result-object v1

    :goto_27
    if-nez v5, :cond_45

    if-eqz v1, :cond_34

    return-object v1

    :catch_2c
    move-exception v0

    const/4 v5, 0x0

    goto :goto_10

    :cond_2f
    const/4 v1, 0x0

    goto :goto_27

    :catch_31
    move-exception v0

    const/4 v1, 0x0

    goto :goto_27

    :cond_34
    new-instance v8, Ljava/io/FileNotFoundException;

    const-string/jumbo v9, "No model file found for %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_45
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Landroid/view/textclassifier/SmartSelection;->getLanguage(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v1, :cond_7e

    if-eqz v4, :cond_6a

    return-object v5

    :cond_6a
    invoke-static {v5}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    new-instance v8, Ljava/io/FileNotFoundException;

    const-string/jumbo v9, "No model file found for %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7e
    if-nez v4, :cond_84

    invoke-static {v5}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    return-object v1

    :cond_84
    invoke-static {v6}, Landroid/view/textclassifier/SmartSelection;->getVersion(I)I

    move-result v7

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-static {v8}, Landroid/view/textclassifier/SmartSelection;->getVersion(I)I

    move-result v3

    if-le v7, v3, :cond_98

    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    iput v7, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    return-object v5

    :cond_98
    invoke-static {v5}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    iput v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    return-object v1
.end method

.method private static getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x0

    array-length v4, p0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_9

    const-string/jumbo v4, ""

    return-object v4

    :cond_9
    aget-object v4, p0, v6

    iget-object v3, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    aget-object v4, p0, v6

    iget v0, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    array-length v2, p0

    const/4 v1, 0x1

    :goto_13
    if-ge v1, v2, :cond_28

    aget-object v4, p0, v1

    iget v4, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_25

    aget-object v4, p0, v1

    iget-object v3, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    aget-object v4, p0, v1

    iget v0, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_28
    return-object v3
.end method

.method private static getHintFlags(Ljava/lang/CharSequence;II)I
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v0, 0x2

    :cond_12
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v2, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    invoke-interface {v2, p0, p1, p2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_28

    or-int/lit8 v0, v0, 0x1

    :cond_28
    return v0
.end method

.method private getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_9

    :try_start_5
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    :cond_9
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->findBestSupportedLocaleLocked(Landroid/os/LocaleList;)Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_1b

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v4, "No file for null locale"

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_40

    :cond_29
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->destroySmartSelectionIfExistsLocked()V

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassifierImpl;->getFdLocked(Ljava/util/Locale;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v2, Landroid/view/textclassifier/SmartSelection;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/view/textclassifier/SmartSelection;-><init>(I)V

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    :cond_40
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_18

    monitor-exit v3

    return-object v2
.end method

.method private getUpdatedModelLocale()Ljava/util/Locale;
    .registers 6

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/textclassifier/textclassifier.smartselection.model"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Landroid/view/textclassifier/SmartSelection;->getLanguage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
    move-exception v0

    const/4 v3, 0x0

    return-object v3
.end method

.method private getVersionInfo()Ljava/lang/String;
    .registers 6

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_25

    const-string/jumbo v0, "%s_v%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_2a

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_25
    :try_start_25
    const-string/jumbo v0, ""
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2a

    monitor-exit v1

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static validateInput(Ljava/lang/CharSequence;II)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1e

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-ltz p1, :cond_20

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_22

    move v0, v1

    :goto_15
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-le p2, p1, :cond_24

    :goto_1a
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    return-void

    :cond_1e
    move v0, v2

    goto :goto_5

    :cond_20
    move v0, v2

    goto :goto_b

    :cond_22
    move v0, v2

    goto :goto_15

    :cond_24
    move v1, v2

    goto :goto_1a
.end method


# virtual methods
.method public classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .registers 11

    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifierImpl;->validateInput(Ljava/lang/CharSequence;II)V

    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    move-result-object v4

    invoke-static {v2, p2, p3}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    move-result v5

    invoke-virtual {v4, v2, p2, p3, v5}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_2f

    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Landroid/view/textclassifier/TextClassifierImpl;->createClassificationResult([Landroid/view/textclassifier/SmartSelection$ClassificationResult;Ljava/lang/CharSequence;)Landroid/view/textclassifier/TextClassification;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_25

    move-result-object v0

    return-object v0

    :catch_25
    move-exception v3

    const-string/jumbo v4, "TextClassifierImpl"

    const-string/jumbo v5, "Error getting assist info."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    sget-object v4, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    move-result-object v4

    return-object v4
.end method

.method public getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;
    .registers 8

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :try_start_6
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->create(Landroid/content/Context;Landroid/view/textclassifier/SmartSelection;Ljava/lang/String;I)Landroid/view/textclassifier/LinksInfo;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_17

    move-result-object v1

    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_3

    :catch_17
    move-exception v0

    const-string/jumbo v1, "TextClassifierImpl"

    const-string/jumbo v2, "Error getting links info."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/textclassifier/TextClassifier;->getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;

    move-result-object v1

    return-object v1
.end method

.method public getSettings()Landroid/view/textclassifier/TextClassifierConstants;
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "text_classifier_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierConstants;->loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    :cond_17
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "TextClassifierImpl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_f
    return-void
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .registers 21

    invoke-static/range {p1 .. p3}, Landroid/view/textclassifier/TextClassifierImpl;->validateInput(Ljava/lang/CharSequence;II)V

    :try_start_3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_71

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1}, Landroid/view/textclassifier/SmartSelection;->suggest(Ljava/lang/String;II)[I

    move-result-object v10

    const/4 v14, 0x0

    aget v9, v10, v14

    const/4 v14, 0x1

    aget v4, v10, v14

    if-gt v9, v4, :cond_68

    if-ltz v9, :cond_68

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v4, v14, :cond_68

    move/from16 v0, p2

    if-gt v9, v0, :cond_68

    move/from16 v0, p3

    if-lt v4, v0, :cond_68

    new-instance v13, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {v13, v9, v4}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    invoke-static {v11, v9, v4}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    move-result v14

    invoke-virtual {v8, v11, v9, v4, v14}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_44
    if-ge v5, v7, :cond_54

    aget-object v14, v6, v5

    iget-object v14, v14, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    aget-object v15, v6, v5

    iget v15, v15, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    invoke-virtual {v13, v14, v15}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_54
    const-string/jumbo v14, "TextClassifierImpl"

    invoke-virtual {v13, v14}, Landroid/view/textclassifier/TextSelection$Builder;->setLogSource(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Landroid/view/textclassifier/TextClassifierImpl;->getVersionInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/textclassifier/TextSelection$Builder;->setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v14

    return-object v14

    :cond_68
    const-string/jumbo v14, "TextClassifierImpl"

    const-string/jumbo v15, "Got bad indices for input text. Ignoring result."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_71} :catch_80

    :cond_71
    :goto_71
    sget-object v14, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v14, v0, v1, v2, v3}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    move-result-object v14

    return-object v14

    :catch_80
    move-exception v12

    const-string/jumbo v14, "TextClassifierImpl"

    const-string/jumbo v15, "Error suggesting selection for text. No changes to selection suggested."

    invoke-static {v14, v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71
.end method

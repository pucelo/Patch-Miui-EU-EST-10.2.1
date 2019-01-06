.class public Lcom/miui/internal/search/SettingsTree;
.super Lcom/miui/internal/search/IndexTree;
.source "SettingsTree.java"


# static fields
.field public static final DISABLED:I = 0x1

.field public static final ENABLED:I = 0x3

.field public static final FLAG_AVAILABLE:I = 0x2

.field public static final FLAG_IGNORED:I = 0x4

.field public static final FLAG_VISIBLE:I = 0x1

.field public static final INVISIBLE:I = 0x0

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "SettingsTree"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryString:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field private mFeature:Ljava/lang/String;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIsCheckBox:Z

.field private mIsOldman:Z

.field private mIsSecondSpace:Z

.field private mKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeywordsResource:Ljava/lang/String;

.field private mLocale:Ljava/util/Locale;

.field private mResource:Ljava/lang/String;

.field private mStatus:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTmp:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p3}, Lcom/miui/internal/search/IndexTree;-><init>(Lcom/miui/internal/search/IndexTree;)V

    const-string/jumbo v4, "package"

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "resource"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    const-string/jumbo v4, "category"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    const-string/jumbo v4, "keywords"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    const-string/jumbo v4, "summary"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    const-string/jumbo v4, "icon"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    const-string/jumbo v4, "fragment"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    :try_start_4f
    new-instance v4, Lcom/miui/internal/search/TinyIntent;

    const-string/jumbo v5, "intent"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/internal/search/TinyIntent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/miui/internal/search/TinyIntent;->toIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_61} :catch_b7

    :goto_61
    const-string/jumbo v4, "feature"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    const-string/jumbo v4, "second_space"

    invoke-virtual {p2, v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    const-string/jumbo v4, "is_checkbox"

    invoke-virtual {p2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    const-string/jumbo v4, "is_oldman"

    invoke-virtual {p2, v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    const-string/jumbo v4, "son"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_bb

    iget-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    invoke-static {v4}, Lcom/miui/internal/search/SearchUtils;->removeViaSecondSpace(Z)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_bb

    iget-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/search/SearchUtils;->removeViaFeature(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_bb

    const/4 v1, 0x0

    :goto_a3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_bb

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p1, v4, p0, p4}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/internal/search/SettingsTree;->addSon(Lcom/miui/internal/search/IndexTree;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    :catch_b7
    move-exception v0

    iput-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    goto :goto_61

    :cond_bb
    const-string/jumbo v4, "status"

    const/4 v5, 0x3

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/internal/search/SettingsTree;->mStatus:I

    const-string/jumbo v4, "temporary"

    invoke-virtual {p2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    iput-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private dispatchInitialize()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->removeViaSecondSpace(Z)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->removeViaFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->initialize()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private getColumnValues(Lcom/miui/internal/search/RankedCursor;DZ)V
    .registers 13

    invoke-virtual {p1}, Lcom/miui/internal/search/RankedCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/internal/search/RankedCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    array-length v5, v0

    if-ge v2, v5, :cond_6d

    const-string/jumbo v5, "intent"

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    if-eqz p4, :cond_4b

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v3

    :goto_20
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    :goto_2a
    aget-object v5, v4, v2

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_2a

    :cond_4b
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v5

    if-nez v5, :cond_53

    const/4 v3, 0x0

    goto :goto_20

    :cond_53
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v5

    invoke-direct {v5}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v3

    goto :goto_20

    :cond_5c
    aget-object v5, v4, v2

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_64
    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lcom/miui/internal/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_61

    :cond_6d
    invoke-virtual {p1, p2, p3, v4}, Lcom/miui/internal/search/RankedCursor;->addRow(D[Ljava/lang/String;)V

    return-void
.end method

.method private getIntentForStart()Landroid/content/Intent;
    .registers 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string/jumbo v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string/jumbo v1, ":settings:show_fragment_title"

    invoke-virtual {p0, v3}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_37
    :goto_37
    return-object v0

    :cond_38
    const-string/jumbo v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string/jumbo v1, ":android:show_fragment_title"

    invoke-virtual {p0, v3}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    :cond_4c
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    invoke-direct {v1}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v1

    :cond_5a
    return-object v1
.end method

.method private isSelected(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 19

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v5, 0x0

    const-string/jumbo v9, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    move v6, v5

    :goto_14
    if-ge v10, v12, :cond_62

    aget-object v4, v11, v10

    const-string/jumbo v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "?"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    add-int/lit8 v5, v6, 0x1

    aget-object v1, p2, v6

    :goto_3a
    sget-object v13, Lcom/miui/internal/search/Function;->FUNCTIONS:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v14, v13

    :goto_3e
    if-ge v9, v14, :cond_5d

    aget-object v2, v13, v9

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/internal/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_58

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5a

    :cond_58
    const/4 v9, 0x0

    return v9

    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_5d
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v6, v5

    goto :goto_14

    :cond_62
    const/4 v9, 0x1

    return v9

    :cond_64
    move v5, v6

    goto :goto_3a
.end method

.method private match(Ljava/lang/String;)D
    .registers 16

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u2011"

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_53

    const-string/jumbo v5, "SettingsTree"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "null title: resource = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", class = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_53
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u2011"

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/miui/internal/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpl-double v5, v2, v12

    if-ltz v5, :cond_78

    return-wide v12

    :cond_78
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getKeywords()[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    array-length v6, v1

    :goto_7e
    if-ge v5, v6, :cond_b0

    aget-object v0, v1, v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u2011"

    const-string/jumbo v9, "-"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/internal/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v8, v10

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpl-double v7, v2, v12

    if-ltz v7, :cond_ad

    return-wide v12

    :cond_ad
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    :cond_b0
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPinyin()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/miui/internal/search/SearchUtils;->doPinyinMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpg-double v5, v2, v6

    if-gez v5, :cond_ca

    const-wide/16 v2, 0x0

    :cond_ca
    return-wide v2
.end method

.method protected static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;)Lcom/miui/internal/search/SettingsTree;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method protected static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "class"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "package"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Lcom/miui/internal/search/SettingsTree;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5d

    invoke-virtual {p2}, Lcom/miui/internal/search/SettingsTree;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    move-object v4, v1

    :cond_35
    invoke-static {p0, v4}, Lcom/miui/internal/search/SearchUtils;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string/jumbo v7, "SettingsTree"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " doesn\'t exist any more"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_5d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c

    const-string/jumbo v7, "com.android.settings"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7b

    :cond_6c
    new-instance v5, Lcom/miui/internal/search/SettingsTree;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/miui/internal/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)V

    if-eqz p3, :cond_7a

    invoke-direct {v5}, Lcom/miui/internal/search/SettingsTree;->dispatchInitialize()Z

    move-result v7

    if-eqz v7, :cond_7a

    move-object v5, v6

    :cond_7a
    return-object v5

    :cond_7b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".search.CustomSettingsTree"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_90
    :try_start_90
    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9c

    const-string/jumbo v4, "com.android.settings"

    :cond_9c
    invoke-static {p0, v4}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v1, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v7, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_100

    new-instance v7, Ljava/lang/ClassCastException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot cast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_e0} :catch_e0

    :catch_e0
    move-exception v3

    const-string/jumbo v7, "SettingsTree"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drop subtree under "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, v10}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :cond_100
    const/4 v7, 0x4

    :try_start_101
    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Lorg/json/JSONObject;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Lcom/miui/internal/search/SettingsTree;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/search/SettingsTree;

    if-eqz p3, :cond_141

    invoke-direct {v5}, Lcom/miui/internal/search/SettingsTree;->dispatchInitialize()Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_13d} :catch_e0

    move-result v7

    if-eqz v7, :cond_141

    :goto_140
    return-object v6

    :cond_141
    move-object v6, v5

    goto :goto_140
.end method

.method public static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Z)Lcom/miui/internal/search/SettingsTree;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method private setColumnValues([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private updateCategoryRelated()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method private updateKeywords()V
    .registers 4

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    if-nez v1, :cond_2d

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    :goto_27
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2c
    return-void

    :cond_2d
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_27
.end method

.method private updateLocale()V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateResourceRelated()V

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateCategoryRelated()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private updateResourceRelated()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    :cond_16
    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/StringBuilder;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_13

    const-string/jumbo v1, ""

    :goto_f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    return-void

    :cond_13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f
.end method

.method public final delete(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final dispatchOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->dispatchOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method protected getCategory(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateLocale()V

    :cond_5
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    goto :goto_14

    :cond_18
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getCheckable()Lcom/miui/internal/search/BackgroundCheckable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x1

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const-string/jumbo v0, "resource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    return-object v0

    :cond_2d
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0, v1}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3b
    const-string/jumbo v0, "category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0, v1}, Lcom/miui/internal/search/SettingsTree;->getCategory(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    const-string/jumbo v0, "category_origin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    return-object v0

    :cond_55
    const-string/jumbo v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_63
    const-string/jumbo v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    return-object v0

    :cond_6f
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    return-object v0

    :cond_7b
    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_89
    const-string/jumbo v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    return-object v0

    :cond_95
    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "use getIntentForStart() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    const-string/jumbo v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was removed once initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    const-string/jumbo v0, "second_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    const-string/jumbo v0, "is_checkbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e3
    const-string/jumbo v0, "is_oldman"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f3
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_105
    const-string/jumbo v0, "temporary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v0, ""

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/search/SettingsTree;->getIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 4

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_c

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":settings:show_fragment"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b

    :cond_38
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected getKeywords()[Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateKeywords()V

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    if-nez v0, :cond_b

    new-array v0, v1, [Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_a
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.android.settings"

    return-object v0
.end method

.method protected final getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/miui/internal/search/IndexTree;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/miui/internal/search/SettingsTree;
    .registers 2

    invoke-super {p0}, Lcom/miui/internal/search/IndexTree;->getParent()Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/SettingsTree;

    return-object v0
.end method

.method protected getPath(ZZ)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    if-nez v1, :cond_3b

    const-string/jumbo v0, ""

    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_45

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/SettingsTree;->getCategory(Z)Ljava/lang/String;

    move-result-object v1

    :goto_32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3b
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_45
    invoke-virtual {p0, p1}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_32
.end method

.method protected getPinyin()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const-string/jumbo v2, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    :goto_24
    return-object v1

    :cond_25
    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_24
.end method

.method public getSons()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/internal/search/SettingsTree;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method protected getStatus()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/search/SettingsTree;->mStatus:I

    return v0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateLocale()V

    :cond_5
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method protected final getUri()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://com.miui.settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v2}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;
    .registers 11

    const/4 v8, 0x0

    const-string/jumbo v5, "parent"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    return-object v8

    :cond_11
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :try_start_22
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    array-length v6, v1

    :goto_29
    if-ge v5, v6, :cond_37

    aget-object v0, v1, v5

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_37
    iget-object v5, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, p0}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;)Lcom/miui/internal/search/SettingsTree;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_3c} :catch_3e

    move-result-object v5

    return-object v5

    :catch_3e
    move-exception v2

    return-object v8
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public final query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const/4 v8, 0x0

    invoke-static {}, Lcom/miui/internal/search/SearchUtils;->isOldmanMode()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    return v8

    :cond_e
    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatus()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_18

    move-result v4

    :goto_13
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_39

    return v8

    :catch_18
    move-exception v1

    const-string/jumbo v5, "SettingsTree"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hide because exception occurs when query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_39
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_56

    const/4 v0, 0x1

    :goto_3e
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_55

    invoke-direct {p0, p3, p4}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-direct {p0, p2}, Lcom/miui/internal/search/SettingsTree;->match(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpl-double v5, v2, v6

    if-lez v5, :cond_55

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/miui/internal/search/SettingsTree;->getColumnValues(Lcom/miui/internal/search/RankedCursor;DZ)V

    :cond_55
    return v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public setColumnValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "resource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateResourceRelated()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    const-string/jumbo v0, "category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateCategoryRelated()V

    goto :goto_e

    :cond_1e
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should not be modified, you may modify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " via resource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const-string/jumbo v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    goto :goto_e

    :cond_61
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    goto :goto_e

    :cond_6d
    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    goto :goto_e

    :cond_79
    const-string/jumbo v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    goto :goto_e

    :cond_85
    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use setIntent() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    const-string/jumbo v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was removed once initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    const-string/jumbo v0, "second_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string/jumbo v0, "is_checkbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    goto/16 :goto_e

    :cond_d4
    const-string/jumbo v0, "is_oldman"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    goto/16 :goto_e

    :cond_e5
    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    :cond_ee
    :goto_ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_108
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    const-string/jumbo v0, "temporary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_ee
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .registers 10

    const/4 v7, 0x0

    iget-boolean v6, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    if-eqz v6, :cond_6

    return-object v7

    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_b
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string/jumbo v6, "package"

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_22
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    const-string/jumbo v6, "class"

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3c
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    const-string/jumbo v6, "resource"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4c
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c

    const-string/jumbo v6, "category"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5c
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6c

    const-string/jumbo v6, "keywords"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6c
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7c

    const-string/jumbo v6, "summary"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7c
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8c

    const-string/jumbo v6, "icon"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8c
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9c

    const-string/jumbo v6, "fragment"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9c
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_b1

    const-string/jumbo v6, "intent"

    new-instance v7, Lcom/miui/internal/search/TinyIntent;

    iget-object v8, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Lcom/miui/internal/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v7}, Lcom/miui/internal/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b1
    iget-boolean v6, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    if-eqz v6, :cond_bc

    const-string/jumbo v6, "is_checkbox"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_bc
    iget-boolean v6, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    if-nez v6, :cond_c7

    const-string/jumbo v6, "is_oldman"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_c7
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v6

    if-eqz v6, :cond_fd

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_da
    :goto_da
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v3}, Lcom/miui/internal/search/SettingsTree;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_da

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_ef} :catch_f0

    goto :goto_da

    :catch_f0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_f7
    :try_start_f7
    const-string/jumbo v6, "son"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_f7 .. :try_end_fd} :catch_f0

    :cond_fd
    return-object v1
.end method

.method public final update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0, p2, p3}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    return v3

    :cond_8
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_20
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_31
    invoke-direct {p0, v0, v2}, Lcom/miui/internal/search/SettingsTree;->setColumnValues([Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3
.end method

.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/Searchables$1;
    }
.end annotation


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "com.android.googlesearch/.GoogleSearch"

    sput-object v0, Lcom/android/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    sput-object v0, Lcom/android/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/server/search/Searchables$1;

    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10010000

    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1d
    return-object v0
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v0

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-direct {p0, v2, v3}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_36
    const-string/jumbo v3, "Searchables"

    const-string/jumbo v4, "No web search activity found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1e
    const-string/jumbo v1, "Searchables"

    const-string/jumbo v2, "No global search activity found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "search_global_search_activity"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .registers 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    return v2

    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-interface {v2, p1, v3, p2, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "Searchable authorities:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2b

    goto :goto_11

    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 14

    const/4 v11, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SearchableInfo;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_41

    if-eqz v7, :cond_e

    monitor-exit p0

    return-object v7

    :cond_e
    monitor-exit p0

    const/4 v1, 0x0

    :try_start_10
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget v9, p0, Lcom/android/server/search/Searchables;->mUserId:I

    const/16 v10, 0x80

    invoke-interface {v8, p1, v10, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_44

    move-result-object v1

    const/4 v5, 0x0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_26

    const-string/jumbo v8, "android.app.default_searchable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_26
    if-nez v5, :cond_35

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_35

    const-string/jumbo v8, "android.app.default_searchable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_35
    if-eqz v5, :cond_9e

    const-string/jumbo v8, "*"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    return-object v11

    :catchall_41
    move-exception v8

    monitor-exit p0

    throw v8

    :catch_44
    move-exception v4

    const-string/jumbo v8, "Searchables"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error getting activity info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_60
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_97

    new-instance v6, Landroid/content/ComponentName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_83
    monitor-enter p0

    :try_start_84
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/app/SearchableInfo;

    move-object v7, v0

    if-eqz v7, :cond_9d

    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_84 .. :try_end_95} :catchall_9f

    monitor-exit p0

    return-object v7

    :cond_97
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_9d
    monitor-exit p0

    :cond_9e
    return-object v11

    :catchall_9f
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSearchableList()V
    .registers 27

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.SEARCH"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const v23, 0x10000080

    :try_start_20
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v23, 0x10000080

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    if-nez v17, :cond_45

    if-eqz v20, :cond_c0

    :cond_45
    if-nez v17, :cond_a9

    const/16 v18, 0x0

    :goto_49
    if-nez v20, :cond_ae

    const/16 v22, 0x0

    :goto_4d
    add-int v5, v18, v22

    const/4 v8, 0x0

    :goto_50
    if-ge v8, v5, :cond_c0

    move/from16 v0, v18

    if-ge v8, v0, :cond_b3

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    :goto_5e
    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v23, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-nez v23, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/search/Searchables;->mUserId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v4, v1}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    move-result-object v19

    if-eqz v19, :cond_a6

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v19 .. v19}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v23

    if-eqz v23, :cond_a6

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :cond_a9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    goto :goto_49

    :cond_ae
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    goto :goto_4d

    :cond_b3
    sub-int v23, v8, v18

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    goto :goto_5e

    :cond_c0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v16

    monitor-enter p0
    :try_end_d1
    .catchall {:try_start_20 .. :try_end_d1} :catchall_f3

    :try_start_d1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_eb
    .catchall {:try_start_d1 .. :try_end_eb} :catchall_f0

    :try_start_eb
    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_f3

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f0
    move-exception v23

    :try_start_f1
    monitor-exit p0

    throw v23
    :try_end_f3
    .catchall {:try_start_f1 .. :try_end_f3} :catchall_f3

    :catchall_f3
    move-exception v23

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23
.end method

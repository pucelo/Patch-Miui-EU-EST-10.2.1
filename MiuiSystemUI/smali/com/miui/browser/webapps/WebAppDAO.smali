.class public Lcom/miui/browser/webapps/WebAppDAO;
.super Ljava/lang/Object;
.source "WebAppDAO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/browser/webapps/WebAppDAO;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataChangeBroadcastReceiver:Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;

.field private mIsReady:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/browser/webapps/WebAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/miui/browser/webapps/WebAppDAO;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/browser/webapps/WebAppDAO;->query()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/browser/webapps/WebAppDAO;->sInstance:Lcom/miui/browser/webapps/WebAppDAO;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/miui/browser/webapps/WebAppDAO;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mIsReady:Z

    new-instance v0, Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;-><init>(Lcom/miui/browser/webapps/WebAppDAO;Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;)V

    iput-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mDataChangeBroadcastReceiver:Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mDataChangeBroadcastReceiver:Lcom/miui/browser/webapps/WebAppDAO$DataChangeBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "miui.browser.webapps.action.DATA_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private get(Ljava/lang/String;)Lcom/miui/browser/webapps/WebAppInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/browser/webapps/WebAppInfo;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/browser/webapps/WebAppDAO;
    .locals 2

    sget-object v0, Lcom/miui/browser/webapps/WebAppDAO;->sInstance:Lcom/miui/browser/webapps/WebAppDAO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/browser/webapps/WebAppDAO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/browser/webapps/WebAppDAO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/browser/webapps/WebAppDAO;->sInstance:Lcom/miui/browser/webapps/WebAppDAO;

    :cond_0
    sget-object v0, Lcom/miui/browser/webapps/WebAppDAO;->sInstance:Lcom/miui/browser/webapps/WebAppDAO;

    return-object v0
.end method

.method private final isNeedToCheck(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "com.android.browser"

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const-string/jumbo v1, "miui.browser.webapps.app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private final isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mIsReady:Z

    return v0
.end method

.method private final query()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "content://miui.browser.webapps/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_0

    new-instance v8, Lcom/miui/browser/webapps/WebAppInfo;

    invoke-direct {v8, v6}, Lcom/miui/browser/webapps/WebAppInfo;-><init>(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    iget-object v1, v8, Lcom/miui/browser/webapps/WebAppInfo;->mTaskAffinity:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    goto :goto_0

    :cond_0
    invoke-direct {p0, v6}, Lcom/miui/browser/webapps/WebAppDAO;->closeCursor(Landroid/database/Cursor;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mIsReady:Z

    return-void
.end method


# virtual methods
.method public get(Landroid/content/pm/ActivityInfo;)Lcom/miui/browser/webapps/WebAppInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/browser/webapps/WebAppDAO;->isNeedToCheck(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/browser/webapps/WebAppDAO;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/browser/webapps/WebAppDAO;->query()V

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/browser/webapps/WebAppDAO;->get(Ljava/lang/String;)Lcom/miui/browser/webapps/WebAppInfo;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mIsReady:Z

    iget-object v0, p0, Lcom/miui/browser/webapps/WebAppDAO;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

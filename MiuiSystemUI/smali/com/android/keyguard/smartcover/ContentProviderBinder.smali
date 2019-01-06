.class public Lcom/android/keyguard/smartcover/ContentProviderBinder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;,
        Lcom/android/keyguard/smartcover/ContentProviderBinder$ChangeObserver;,
        Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;,
        Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;
    }
.end annotation


# instance fields
.field public mChangeObserver:Lcom/android/keyguard/smartcover/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mCountName:Ljava/lang/String;

.field private mQueryCompletedListener:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;

.field private mSystemBootCompleted:Z

.field public mUri:Landroid/net/Uri;

.field protected mWhere:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/smartcover/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/smartcover/ContentProviderBinder$ChangeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$ChangeObserver;-><init>(Lcom/android/keyguard/smartcover/ContentProviderBinder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mChangeObserver:Lcom/android/keyguard/smartcover/ContentProviderBinder$ChangeObserver;

    iput-object p1, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;-><init>(Lcom/android/keyguard/smartcover/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mQueryHandler:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;

    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const-string/jumbo v2, "ContentProviderBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; muri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mQueryCompletedListener:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mQueryCompletedListener:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;

    iget-object v3, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Landroid/net/Uri;I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_3

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    throw v2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private registerObserver(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mChangeObserver:Lcom/android/keyguard/smartcover/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mChangeObserver:Lcom/android/keyguard/smartcover/ContentProviderBinder$ChangeObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ContentProviderBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->registerObserver(Z)V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->registerObserver(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->startQuery()V

    return-void
.end method

.method public setQueryCompleteListener(Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mQueryCompletedListener:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public startQuery()V
    .locals 8

    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ContentProviderBinder"

    const-string/jumbo v1, "startQuery  uri == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    const-string/jumbo v3, "sys.boot_completed"

    invoke-static {v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mSystemBootCompleted:Z

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mQueryHandler:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    iget-object v5, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mWhere:Ljava/lang/String;

    const-string/jumbo v0, "ContentProviderBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n where:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mQueryHandler:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;

    iget-object v3, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public abstract Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.super Ljava/lang/Object;
.source "MiStatInterface.java"


# static fields
.field private static sABTestInitialized:Z

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "category cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v0, "mistat_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkInitialized()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized, do you forget to call initialize when application started?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableExceptionCatcher(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->isExceptionCatcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-nez p0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/b;->a(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static final enableLog()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "initialize %s, %s, %s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MI_STAT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "appID or appKey is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Initializing sdk error, reason: context is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p0, v0

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()V

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->b()V

    sput-boolean v4, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-nez p4, :cond_5

    :goto_2
    return-void

    :cond_3
    goto :goto_0

    :cond_4
    const-string/jumbo p3, "mistats_default"

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->enableAutoRecord()Z

    goto :goto_2
.end method

.method public static isExceptionCatcherEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v2, p0

    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/c;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v2, "The statistics is disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "default_category"

    goto :goto_0
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v2, p0

    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/c;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/data/c;->setAnonymous(I)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v2, "The statistics is disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "default_category"

    goto :goto_0
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void

    :cond_0
    const-string/jumbo v1, "MI_STAT"

    const-string/jumbo v2, "The statistics is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/e;->setAnonymous(I)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void

    :cond_0
    const-string/jumbo v1, "MI_STAT"

    const-string/jumbo v2, "The statistics is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void

    :cond_0
    const-string/jumbo v1, "MI_STAT"

    const-string/jumbo v2, "The statistics is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/h;->setAnonymous(I)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    return-void

    :cond_0
    const-string/jumbo v1, "MI_STAT"

    const-string/jumbo v2, "The statistics is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final setUploadPolicy(IJ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(IJ)V

    return-void

    :cond_1
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-wide/32 v2, 0xea60

    cmp-long v2, p1, v2

    if-gez v2, :cond_4

    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    const-wide/32 v2, 0x5265c00

    cmp-long v2, p1, v2

    if-gtz v2, :cond_5

    :goto_1
    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "interval should be set between 1 minutes and 1 day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static shouldExceptionUploadImmediately()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

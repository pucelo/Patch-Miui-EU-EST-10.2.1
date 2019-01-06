.class public abstract Lcom/xiaomi/analytics/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContent:Lorg/json/JSONObject;

.field private mExtra:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string/jumbo v1, "_event_id_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string/jumbo v1, "_category_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string/jumbo v1, "_action_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string/jumbo v1, "_label_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string/jumbo v1, "_value_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-void
.end method

.method private ensureKey(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is built-in, please pick another key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method addContent(Ljava/lang/String;J)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Action"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "addContent long value e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method addContent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Action"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "addContent Object value e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Action"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "addExtra e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;J)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method final getContent()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method final getExtra()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method

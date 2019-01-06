.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;
.super Ljava/lang/Object;
.source "RemoteDataPackingJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;,
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:J

.field private d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/json/JSONObject;

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    return-void
.end method

.method public constructor <init>(JZLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:J

    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    iput-boolean p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    return-void
.end method

.method private a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 3

    iget-wide v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c(J)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b()V

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    goto :goto_0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v8, "mistat_session"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v3, "start"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "end"

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    const-string/jumbo v8, "env"

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "values"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "category"

    const-string/jumbo v8, "mistat_session"

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "values"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v8, "mistat_session"

    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string/jumbo v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private c(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v7, "mistat_session_extra"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v6, "auto_end"

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v6, "values"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "category"

    const-string/jumbo v7, "mistat_session_extra"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "values"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v7, "mistat_session_extra"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string/jumbo v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private c(J)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    sub-long/2addr v2, p1

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b(J)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private d(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v9, "mistat_pv"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v8, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    new-array v2, v8, [Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v8, ","

    invoke-static {v8, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "values"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    const-string/jumbo v9, ","

    invoke-static {v9, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "index"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "source"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v8, "category"

    const-string/jumbo v9, "mistat_pv"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "values"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "source"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v9, "mistat_pv"

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string/jumbo v9, "content"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    array-length v8, v1

    if-lez v8, :cond_0

    const/4 v3, 0x0

    :goto_2
    array-length v8, v1

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    iget-object v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    iget-object v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Ljava/util/ArrayList;

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v5, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    goto :goto_3

    :cond_4
    const-string/jumbo v8, "source"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method private e(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v7, "mistat_pt"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :goto_0
    const-string/jumbo v6, "values"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    const-string/jumbo v7, "key"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    const-string/jumbo v7, "value"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "values"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v6, "category"

    const-string/jumbo v7, "mistat_pt"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "values"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    const-string/jumbo v7, "mistat_pt"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string/jumbo v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private f(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    const-string/jumbo v6, "event"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    const-string/jumbo v6, "mistat_extra"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    const-string/jumbo v6, "key"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    const-string/jumbo v6, "count"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_1
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    const-string/jumbo v3, "values"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    return-void

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    const-string/jumbo v6, "category"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "values"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_5

    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    const-string/jumbo v6, "key"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "values"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-nez v1, :cond_4

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v4

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v3, "values"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_3

    :cond_7
    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    const-string/jumbo v6, "numeric"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    const-string/jumbo v6, "value"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_8
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "params"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2
.end method


# virtual methods
.method public a(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    new-instance v15, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v15}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>()V

    invoke-virtual {v15}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/Boolean;)V

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(J)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :try_start_0
    const-string/jumbo v3, "No data available to be packed"

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :goto_0
    new-instance v3, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;Lorg/json/JSONArray;JJI)V

    return-object v3

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Packing complete, total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " records were packed and to be uploaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    const-string/jumbo v3, "packing exception:"

    invoke-static {v3, v12}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    const-wide/16 v16, 0x0

    cmp-long v3, v8, v16

    if-nez v3, :cond_3

    iget-wide v8, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    :cond_3
    iget-wide v6, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    :goto_2
    iget-object v3, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    const-string/jumbo v4, "mistat_session"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    const-string/jumbo v4, "mistat_pv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    const-string/jumbo v4, "mistat_pt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    const-string/jumbo v4, "mistat_session_extra"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    iget-wide v0, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    move-wide/from16 v16, v0

    const-string/jumbo v4, "startTS"

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    iget-wide v0, v13, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    move-wide/from16 v16, v0

    const-string/jumbo v4, "endTS"

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    const-string/jumbo v4, "content"

    invoke-virtual {v3, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public a()V
    .locals 12

    const/4 v11, 0x5

    const/16 v10, 0x1f4

    const/4 v9, 0x0

    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v2

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v4

    iget v6, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    iget-boolean v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    const-string/jumbo v1, ""

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V

    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    if-nez v0, :cond_1

    iget v0, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    if-ge v0, v10, :cond_4

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v2

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v4

    iget v6, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    iget-boolean v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "remote data packing job execute exception:"

    invoke-static {v0, v8}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    iget-boolean v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move v6, v9

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget v0, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    if-ge v0, v10, :cond_2

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    const-string/jumbo v2, "Packing %d anonymous events over MAX_PACKING_EVENT %d"

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    if-lt v0, v11, :cond_3

    const-string/jumbo v0, "Packing, exceeded MAX_UPLOAD_TIMES 5"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Packing %d not anonymous events over MAX_PACKING_EVENT %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    if-lt v0, v11, :cond_5

    const-string/jumbo v0, "Packing, exceeded MAX_UPLOAD_TIMES 5"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method b(J)Z
    .locals 13

    const-wide/32 v10, 0x5265c00

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    rem-long v0, v8, v10

    iget-wide v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:J

    sub-long v2, v8, v0

    add-long v4, v2, v10

    cmp-long v8, p1, v2

    if-gez v8, :cond_0

    move v8, v6

    :goto_0
    if-nez v8, :cond_2

    cmp-long v8, p1, v4

    if-ltz v8, :cond_1

    move v8, v6

    :goto_1
    if-nez v8, :cond_2

    :goto_2
    return v6

    :cond_0
    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v7

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2
.end method

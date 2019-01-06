.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;
.super Ljava/lang/Object;
.source "RemoteDataUploadJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    iput-boolean p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const-string/jumbo v3, "seed:%s-%s-%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upload complete, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "RDUJ"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v5

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v2, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result status isn\'t ok, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "parseUploadingResult exception "

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "test ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/o;->d()V

    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 15

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/mistatistic/sdk/controller/p;->g()I

    move-result v1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/mistatistic/sdk/controller/p;->f()J

    move-result-wide v4

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iget-boolean v11, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    if-nez v11, :cond_0

    new-instance v11, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v11}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v11}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget-boolean v11, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    if-eqz v11, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "app_id"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "app_key"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v11, "device_id"

    invoke-interface {v3, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "id_type"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->d()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "channel"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "policy"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "interval"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v11, "sdk_version"

    const-string/jumbo v12, "1.9.16"

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "upload policy:%d, upload interval:%d, mistat upload version:%d, upload %d events."

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v11, v14

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v11, v14

    iget v13, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v11, v14

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_2
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "stat_value:%s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "RDUJ"

    invoke-static {v12, v11}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12, v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    invoke-static {v11, v9}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "stat_value"

    invoke-interface {v3, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "mistatv"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v11, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "size"

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTest()Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v0, "http://data.mistat.xiaomi.com/mistats/v2"

    :goto_3
    new-instance v11, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;

    invoke-direct {v11, p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)V

    invoke-static {v0, v3, v11}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    :goto_4
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v11, "version"

    invoke-interface {v3, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RemoteDataUploadJob exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "RDUJ"

    invoke-static {v12, v11}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    iget-boolean v12, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;->a(ZZ)V

    goto :goto_4

    :cond_5
    :try_start_1
    const-string/jumbo v0, "http://10.235.124.13:8097/mistats"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

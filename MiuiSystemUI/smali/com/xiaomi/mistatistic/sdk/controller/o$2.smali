.class Lcom/xiaomi/mistatistic/sdk/controller/o$2;
.super Ljava/lang/Object;
.source "ThermoManager.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    :try_start_0
    iget-object v10, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iget-object v11, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Landroid/app/Activity;

    invoke-virtual {v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "height"

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "width"

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lcom/xiaomi/mistatistic/sdk/controller/r;

    invoke-direct {v6}, Lcom/xiaomi/mistatistic/sdk/controller/r;-><init>()V

    iget-object v10, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/app/Activity;)V

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "clickable_views"

    invoke-virtual {v2, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "appId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "appKey"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v10}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v10}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "deviceId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "meta"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "sdk_version"

    const-string/jumbo v11, "1.9.16"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "https://dev.mi.com/mistats/xmstats/event/dynamic/upload"

    const-string/jumbo v11, "test"

    invoke-static {v10, v9, v1, v11}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "upload snapshot with clickable views "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_0

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/a;->a()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v10, "uploadSnapShot task exception: "

    invoke-static {v10, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

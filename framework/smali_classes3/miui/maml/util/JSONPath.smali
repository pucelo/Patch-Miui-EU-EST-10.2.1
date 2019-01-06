.class public Lmiui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    return-object v12

    :cond_8
    const-string/jumbo v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    if-eqz v12, :cond_19

    iget-object v7, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    :goto_15
    if-nez v7, :cond_1c

    const/4 v12, 0x0

    return-object v12

    :cond_19
    iget-object v7, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    goto :goto_15

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    :try_start_1d
    array-length v12, v10

    if-ge v4, v12, :cond_6a

    aget-object v9, v10, v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2b

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v6, -0x1

    const-string/jumbo v12, "["

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_4b

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_4b
    instance-of v12, v7, Lorg/json/JSONObject;

    if-eqz v12, :cond_5f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_5f

    move-object v0, v7

    check-cast v0, Lorg/json/JSONObject;

    move-object v11, v0

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :cond_5f
    instance-of v12, v7, Lorg/json/JSONArray;

    if-eqz v12, :cond_6f

    move-object v0, v7

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    const/4 v12, -0x1

    if-ne v6, v12, :cond_6b

    :cond_6a
    return-object v7

    :cond_6b
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    :cond_6f
    if-eqz v7, :cond_75

    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_73} :catch_84
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_73} :catch_77

    if-ne v7, v12, :cond_28

    :cond_75
    const/4 v12, 0x0

    return-object v12

    :catch_77
    move-exception v2

    const-string/jumbo v12, "JSONPath"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    const/4 v12, 0x0

    return-object v12

    :catch_84
    move-exception v3

    const-string/jumbo v12, "JSONPath"

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

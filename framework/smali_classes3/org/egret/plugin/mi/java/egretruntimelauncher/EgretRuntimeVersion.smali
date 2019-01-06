.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;
.super Ljava/lang/Object;
.source "EgretRuntimeVersion.java"


# static fields
.field private static final JSON_LIBRARY:Ljava/lang/String; = "library"

.field private static final JSON_RUNTIME:Ljava/lang/String; = "runtime"

.field private static final JSON_URL:Ljava/lang/String; = "url"


# instance fields
.field private libraryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->libraryList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)V
    .registers 11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string/jumbo v7, "runtime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "library"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3c

    new-instance v8, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-direct {v8, v7, v6}, Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3c
    iput-object v4, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->libraryList:Ljava/util/ArrayList;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3e
.end method

.method public getLibraryList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/egret/plugin/mi/java/egretruntimelauncher/Library;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeVersion;->libraryList:Ljava/util/ArrayList;

    return-object v0
.end method

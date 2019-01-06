.class public Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;
.super Ljava/lang/Object;
.source "EgretRuntimeLoader.java"


# static fields
.field private static final GAME_ENGINE_CLASS:Ljava/lang/String; = "org.egret.egretframeworknative.engine.EgretGameEngine"

.field private static final TAG:Ljava/lang/String; = "EgretRuntimeLoader"

.field private static instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;


# instance fields
.field private egretGameEngineClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private loaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    return-void
.end method

.method public static get()Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;
    .registers 1

    sget-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    if-nez v0, :cond_b

    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    invoke-direct {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;-><init>()V

    sput-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    :cond_b
    sget-object v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->instance:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;

    return-object v0
.end method


# virtual methods
.method public getEgretGameEngineClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loaded:Z

    const-string/jumbo v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->loadJar(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public loadJar(Ljava/lang/String;)V
    .registers 8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setExecutable(Z)Z

    const-string/jumbo v3, "EgretRuntimeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadJar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_36
    new-instance v0, Ldalvik/system/DexClassLoader;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, p1, v3, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    if-nez v3, :cond_5a

    const-string/jumbo v3, "org.egret.egretframeworknative.engine.EgretGameEngine"

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v1

    const-string/jumbo v3, "Loader"

    const-string/jumbo v4, "need dex format jar"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method

.class public Lorg/egret/plugin/mi/runtime/EgretLoader;
.super Ljava/lang/Object;
.source "EgretLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameEngineMethod;,
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameOptionName;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "EgretLoader"

.field private static final MI_APPID:Ljava/lang/String; = "2000"

.field private static final MI_APPKEY:Ljava/lang/String; = "3321031F35156D389B0B272910695E3F"


# instance fields
.field private activity:Landroid/app/Activity;

.field private gameEngine:Ljava/lang/Object;

.field private launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

.field private options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .registers 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGameEngine()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/egret/plugin/mi/runtime/EgretLoader;Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGame(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "EgretLoader(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    :cond_1d
    return-void
.end method

.method private callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v2, :cond_8

    :cond_7
    return-object v3

    :cond_8
    :try_start_8
    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method

.method private callInitRuntime()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    aput-object v2, v0, v3

    const-string/jumbo v2, "game_engine_init"

    invoke-direct {p0, v2, v1, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private callSetGameOptions()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "EgretLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_55
    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/util/HashMap;

    aput-object v5, v4, v8

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v3, v0, v8

    const-string/jumbo v5, "game_engine_set_options"

    invoke-direct {p0, v5, v4, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private callSetRuntimeView()V
    .registers 3

    const-string/jumbo v1, "game_engine_get_view"

    invoke-direct {p0, v1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->setScreenOrientation()V

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method private checkContext(Landroid/content/Context;)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v7

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setEgretRuntimeListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    return v8

    :catch_28
    move-exception v0

    return v7
.end method

.method private checkEgretGameEngine()Z
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v0, :cond_f

    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "Egret game engine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private setScreenOrientation()V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_25
.end method

.method private startGame(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_11

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    new-instance v2, Lorg/egret/plugin/mi/runtime/EgretLoader$2;

    invoke-direct {v2, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$2;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private startGameEngine()V
    .registers 1

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetGameOptions()V

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callInitRuntime()V

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetRuntimeView()V

    return-void
.end method


# virtual methods
.method public checkEgretContext()Z
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    if-nez v0, :cond_f

    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "The context is not activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    return-void

    :cond_16
    const-string/jumbo v0, "game_engine_onPause"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public onResume()V
    .registers 3

    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    return-void

    :cond_16
    const-string/jumbo v0, "game_engine_onResume"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public onStop()V
    .registers 3

    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    return-void

    :cond_16
    const-string/jumbo v0, "game_engine_onStop"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    const-string/jumbo v0, "gameId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo p1, "egret.runtime.gameId"

    :cond_38
    :goto_38
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3e
    const-string/jumbo v0, "gameUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo p1, "egret.runtime.loaderUrl"

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.updateUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.updateUrl"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38
.end method

.method public setScreenOrientation(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    const-string/jumbo v2, "landscape"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    const-string/jumbo v2, "portrait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public start(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "egret"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.egretRoot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.libraryLoaderType"

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "2000"

    const-string/jumbo v4, "3321031F35156D389B0B272910695E3F"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    new-instance v1, Lorg/egret/plugin/mi/runtime/EgretLoader$1;

    invoke-direct {v1, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$1;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->run(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;)V

    return-void
.end method

.method public stopEgretRuntime()V
    .registers 1

    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->onStop()V

    return-void
.end method

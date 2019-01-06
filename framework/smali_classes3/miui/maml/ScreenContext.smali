.class public Lmiui/maml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextVariables:Lmiui/maml/data/ContextVariables;

.field public final mFactory:Lmiui/maml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mObjectFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final mResourceManager:Lmiui/maml/ResourceManager;

.field public final mVariables:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .registers 4

    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V
    .registers 5

    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V
    .registers 4

    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V
    .registers 5

    new-instance v0, Lmiui/maml/data/Variables;

    invoke-direct {v0}, Lmiui/maml/data/Variables;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Lmiui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Lmiui/maml/data/Variables;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2f

    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eqz v1, :cond_31

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    :goto_16
    iput-object p2, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object p3, p0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v2, Lmiui/maml/data/ContextVariables;

    invoke-direct {v2}, Lmiui/maml/data/ContextVariables;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    return-void

    :cond_2f
    move-object v0, p1

    goto :goto_9

    :cond_31
    iput-object v0, p0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    goto :goto_16
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final declared-synchronized getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiui/maml/ObjectFactory;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_4} :catch_12
    .catchall {:try_start_2 .. :try_end_4} :catchall_15

    if-nez v1, :cond_9

    move-object v1, v2

    :goto_7
    monitor-exit p0

    return-object v1

    :cond_9
    :try_start_9
    iget-object v1, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ObjectFactory;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_12
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    goto :goto_7

    :catch_12
    move-exception v0

    monitor-exit p0

    return-object v2

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized registerObjectFactory(Ljava/lang/String;Lmiui/maml/ObjectFactory;)V
    .registers 8

    monitor-enter p0

    if-nez p2, :cond_e

    :try_start_3
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_32

    :cond_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p2}, Lmiui/maml/ObjectFactory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ObjectFactory name mismatchs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_35
    :try_start_35
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-nez v2, :cond_40

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    :cond_40
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory;
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_32

    move-object v1, v0

    :goto_49
    if-eqz v1, :cond_54

    if-ne v1, p2, :cond_4f

    monitor-exit p0

    return-void

    :cond_4f
    :try_start_4f
    invoke-virtual {v1}, Lmiui/maml/ObjectFactory;->getOld()Lmiui/maml/ObjectFactory;

    move-result-object v1

    goto :goto_49

    :cond_54
    invoke-virtual {p2, v0}, Lmiui/maml/ObjectFactory;->setOld(Lmiui/maml/ObjectFactory;)V

    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_32

    monitor-exit p0

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

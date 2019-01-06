.class public Lmiui/maml/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "VariableUpdaterManager.java"


# static fields
.field public static final USE_TAG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/VariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/maml/data/VariableUpdaterManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public add(Lmiui/maml/data/VariableUpdater;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFromTag(Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "none"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    return-void

    :cond_11
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    move v5, v6

    :goto_1a
    if-ge v5, v7, :cond_5d

    aget-object v3, v4, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    const/4 v2, 0x0

    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_37

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_37
    const-string/jumbo v8, "DateTime"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    new-instance v8, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v8, p0, v2}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    :cond_48
    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_4b
    const-string/jumbo v8, "Battery"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    new-instance v8, Lmiui/maml/data/BatteryVariableUpdater;

    invoke-direct {v8, p0}, Lmiui/maml/data/BatteryVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p0, v8}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    goto :goto_48

    :cond_5d
    return-void
.end method

.method public finish()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->finish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->init()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public pause()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->pause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public remove(Lmiui/maml/data/VariableUpdater;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->resume()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public tick(J)V
    .registers 6

    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/VariableUpdater;->tick(J)V

    goto :goto_6

    :cond_16
    return-void
.end method

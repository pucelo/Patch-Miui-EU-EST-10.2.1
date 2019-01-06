.class public Lmiui/maml/data/FileBinder;
.super Lmiui/maml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lmiui/maml/data/IndexedVariable;

.field protected mDirFormatter:Lmiui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lmiui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 8

    const/4 v2, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v2, "FileBinder"

    const-string/jumbo v3, "FileBinder node is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const-string/jumbo v3, "filter"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_71

    :goto_1e
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string/jumbo v3, "dirExp"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    new-instance v2, Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v4, "dir"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    :cond_6d
    invoke-virtual {p0, p1}, Lmiui/maml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void

    :cond_71
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method private updateVariables()V
    .registers 9

    const/4 v5, 0x0

    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v4, :cond_2a

    const/4 v0, 0x0

    :goto_6
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/FileBinder$Variable;

    iget-object v4, v2, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_c

    iget-object v4, v2, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v1, v6

    if-nez v0, :cond_2e

    move-object v4, v5

    :goto_26
    invoke-virtual {v2, v4}, Lmiui/maml/data/FileBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_c

    :cond_2a
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v4

    goto :goto_6

    :cond_2e
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int v6, v1, v0

    aget-object v4, v4, v6

    goto :goto_26

    :cond_35
    return-void
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/FileBinder$Variable;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->refresh()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .registers 7

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v2}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v2, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :goto_16
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v2, :cond_51

    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_27
    const-string/jumbo v2, "FileBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    return-void

    :cond_45
    new-instance v2, Lmiui/maml/util/FilenameExtFilter;

    iget-object v3, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_51
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v2

    goto :goto_1d
.end method

.method public tick()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->tick()V

    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    return-void
.end method

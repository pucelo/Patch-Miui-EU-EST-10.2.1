.class public Lmiui/maml/CommandTriggers;
.super Ljava/lang/Object;
.source "CommandTriggers.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CommandTriggers"

.field public static final TAG_NAME:Ljava/lang/String; = "Triggers"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    invoke-direct {p0, p1, p2}, Lmiui/maml/CommandTriggers;->load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    :cond_f
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_37

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2c
    iget-object v3, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/CommandTrigger;

    invoke-direct {v4, v2, p2}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_37
    return-void
.end method


# virtual methods
.method public add(Lmiui/maml/CommandTrigger;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;
    .registers 5

    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/CommandTrigger;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_19
    const/4 v2, 0x0

    return-object v2
.end method

.method public finish()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public init()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 5

    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/CommandTrigger;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTrigger;->onAction(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public pause()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    goto :goto_6

    :cond_16
    return-void
.end method

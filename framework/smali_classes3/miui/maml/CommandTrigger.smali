.class public Lmiui/maml/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mActionStrings:[Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCondition:Lmiui/maml/data/Expression;

.field private mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

.field private mScreenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    invoke-direct {p0, p1, p2}, Lmiui/maml/CommandTrigger;->load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    :cond_f
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lmiui/maml/CommandTrigger;

    invoke-direct {v0, p0, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    goto :goto_3
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 3

    const-string/jumbo v0, "Trigger"

    invoke-static {p0, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/maml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 13

    iput-object p2, p0, Lmiui/maml/CommandTrigger;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    const-string/jumbo v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "property"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "value"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8, v7}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    :cond_4b
    const-string/jumbo v8, "action"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    iget-object v8, p0, Lmiui/maml/CommandTrigger;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v8}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    const-string/jumbo v9, "condition"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    :goto_73
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_98

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_95

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-static {v4, p2}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v2

    if-eqz v2, :cond_95

    iget-object v8, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_98
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->finish()V

    :cond_9
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public init()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->init()V

    :cond_9
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public isAction(Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_14

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v1, 0x1

    return v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lmiui/maml/CommandTrigger;->perform()V

    :cond_9
    return-void
.end method

.method public pause()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->pause()V

    :cond_9
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public perform()V
    .registers 7

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_11

    return-void

    :cond_11
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->perform()V

    :cond_1a
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    goto :goto_20

    :cond_30
    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->resume()V

    :cond_9
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    goto :goto_f

    :cond_1f
    return-void
.end method

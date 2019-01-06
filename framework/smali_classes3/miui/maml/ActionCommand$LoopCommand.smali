.class Lmiui/maml/ActionCommand$LoopCommand;
.super Lmiui/maml/ActionCommand$MultiCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopCommand"
.end annotation


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lmiui/maml/data/Expression;

.field private mConditionExp:Lmiui/maml/data/Expression;

.field private mCountExp:Lmiui/maml/data/Expression;

.field private mEndExp:Lmiui/maml/data/Expression;

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string/jumbo v2, "indexName"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$LoopCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    :cond_1c
    const-string/jumbo v2, "begin"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "count"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-nez v2, :cond_47

    const-string/jumbo v2, "end"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    :cond_47
    const-string/jumbo v2, "loopCondition"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 11

    const-wide/16 v8, 0x2710

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    if-nez v5, :cond_57

    const/4 v1, 0x0

    :goto_7
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v5, v6

    add-int/2addr v5, v1

    add-int/lit8 v2, v5, -0x1

    :goto_15
    sub-int v5, v2, v1

    int-to-long v6, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_43

    const-string/jumbo v5, "ActionCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "count is too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", exceeds WARNING "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    move v4, v1

    :goto_44
    if-gt v4, v2, :cond_56

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_6d

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_6d

    :cond_56
    return-void

    :cond_57
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v1, v6

    goto :goto_7

    :cond_5f
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    if-nez v5, :cond_65

    const/4 v2, 0x0

    goto :goto_15

    :cond_65
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v2, v6

    goto :goto_15

    :cond_6d
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_77

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v4

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_77
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_7e
    if-ge v3, v0, :cond_8e

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/ActionCommand;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand;->perform()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_44
.end method

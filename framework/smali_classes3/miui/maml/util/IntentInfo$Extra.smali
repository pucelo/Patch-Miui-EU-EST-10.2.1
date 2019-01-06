.class Lmiui/maml/util/IntentInfo$Extra;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Extra"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Lmiui/maml/data/Expression;

.field private mExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field protected mType:Lmiui/maml/util/IntentInfo$Type;

.field final synthetic this$0:Lmiui/maml/util/IntentInfo;


# direct methods
.method public constructor <init>(Lmiui/maml/util/IntentInfo;Lorg/w3c/dom/Element;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/util/IntentInfo$Extra;->this$0:Lmiui/maml/util/IntentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    invoke-direct {p0, p2}, Lmiui/maml/util/IntentInfo$Extra;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 5

    if-nez p1, :cond_c

    const-string/jumbo v1, "TaskVariable"

    const-string/jumbo v2, "node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string/jumbo v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->STRING:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    :cond_29
    :goto_29
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->this$0:Lmiui/maml/util/IntentInfo;

    invoke-static {v1}, Lmiui/maml/util/IntentInfo;->-get1(Lmiui/maml/util/IntentInfo;)Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "expression"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v1, :cond_49

    const-string/jumbo v1, "TaskVariable"

    const-string/jumbo v2, "invalid expression in IntentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->this$0:Lmiui/maml/util/IntentInfo;

    invoke-static {v1}, Lmiui/maml/util/IntentInfo;->-get1(Lmiui/maml/util/IntentInfo;)Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "condition"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mCondition:Lmiui/maml/data/Expression;

    return-void

    :cond_5d
    const-string/jumbo v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    const-string/jumbo v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_6f
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->INT:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_29

    :cond_74
    const-string/jumbo v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->LONG:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_29

    :cond_82
    const-string/jumbo v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->FLOAT:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_29

    :cond_90
    const-string/jumbo v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_29

    :cond_9e
    const-string/jumbo v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->BOOLEAN:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto/16 :goto_29
.end method


# virtual methods
.method public getDouble()D
    .registers 3

    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConditionTrue()Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mCondition:Lmiui/maml/data/Expression;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mCondition:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

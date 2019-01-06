.class Lmiui/maml/elements/VariableArrayElement$Item;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public mExpression:Lmiui/maml/data/Expression;

.field public mValue:Ljava/lang/Object;

.field final synthetic this$0:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .registers 8

    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_2b

    const-string/jumbo v2, "expression"

    invoke-interface {p3, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "value"

    invoke-interface {p3, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v3, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v2, v3, :cond_2c

    :try_start_21
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2b} :catch_2f

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    goto :goto_2b

    :catch_2f
    move-exception v0

    goto :goto_2b
.end method


# virtual methods
.method public evaluate()Ljava/lang/Double;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_d

    :cond_19
    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2b

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_2b
    return-object v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_16
    return-object v0
.end method

.method public isExpression()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

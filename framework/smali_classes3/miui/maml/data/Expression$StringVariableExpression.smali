.class Lmiui/maml/data/Expression$StringVariableExpression;
.super Lmiui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/data/Expression$VariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public evaluate()D
    .registers 5

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lmiui/maml/data/Expression$StringVariableExpression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    return-wide v2

    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v2

    return-wide v2

    :catch_e
    move-exception v0

    return-wide v2
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->isNull()Z

    move-result v0

    return v0
.end method

.class Lmiui/maml/data/RootExpression$VarVersionVisitor;
.super Lmiui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lmiui/maml/data/RootExpression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/RootExpression;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/data/ExpressionVisitor;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/Expression;)V
    .registers 10

    instance-of v3, p1, Lmiui/maml/data/Expression$VariableExpression;

    if-eqz v3, :cond_1f

    move-object v1, p1

    check-cast v1, Lmiui/maml/data/Expression$VariableExpression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$VariableExpression;->evaluate()D

    iget-object v3, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v4, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$VariableExpression;->getIndex()I

    move-result v5

    invoke-virtual {v1}, Lmiui/maml/data/Expression$VariableExpression;->getVersion()I

    move-result v6

    instance-of v7, p1, Lmiui/maml/data/Expression$NumberVariableExpression;

    invoke-direct {v4, v5, v6, v7}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    instance-of v3, p1, Lmiui/maml/data/Expression$FunctionExpression;

    if-eqz v3, :cond_1e

    move-object v0, p1

    check-cast v0, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rand"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string/jumbo v3, "eval"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string/jumbo v3, "preciseeval"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_45
    iget-object v3, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lmiui/maml/data/RootExpression;->-set0(Lmiui/maml/data/RootExpression;Z)Z

    goto :goto_1e
.end method

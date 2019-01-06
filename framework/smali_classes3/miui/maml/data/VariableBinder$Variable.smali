.class public Lmiui/maml/data/VariableBinder$Variable;
.super Lmiui/maml/data/VariableBinder$TypedValue;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field private mArrayIndex:Lmiui/maml/data/Expression;

.field protected mDefNumberValue:D

.field protected mDefStringValue:Ljava/lang/String;

.field protected mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v2

    invoke-direct {v0, v1, p3, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Lorg/w3c/dom/Element;)V

    const-string/jumbo v2, "arrIndex"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    iget-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-nez v4, :cond_21

    const/4 v1, 0x1

    :cond_21
    invoke-direct {v2, v3, p2, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "default"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_35
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    iput-object v5, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    goto :goto_3d
.end method


# virtual methods
.method public set(D)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_10
.end method

.method public set(Ljava/lang/Object;)V
    .registers 10

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_37

    const-wide/16 v2, 0x0

    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_25

    :try_start_c
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_58

    move-result-wide v2

    :cond_14
    :goto_14
    iget-object v5, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v6, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6, v2, v3}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    :goto_24
    return-void

    :cond_25
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_14

    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_14

    :cond_31
    iget-object v5, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_24

    :cond_37
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_41

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lmiui/maml/util/Utils;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    :cond_41
    iget-object v5, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_52

    iget-object v5, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v6, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6, p1}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_24

    :cond_52
    iget-object v5, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_24

    :catch_58
    move-exception v4

    goto :goto_14
.end method

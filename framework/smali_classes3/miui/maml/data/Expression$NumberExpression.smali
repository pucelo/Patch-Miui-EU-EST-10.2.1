.class public Lmiui/maml/data/Expression$NumberExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberExpression"
.end annotation


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(D)V
    .registers 4

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    iput-wide p1, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x2

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    if-nez p1, :cond_10

    const-string/jumbo v1, "Expression"

    const-string/jumbo v2, "invalid NumberExpression: null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2e

    const-string/jumbo v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    :goto_2d
    return-void

    :cond_2e
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_34} :catch_35

    goto :goto_2d

    :catch_35
    move-exception v0

    const-string/jumbo v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid NumberExpression:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method


# virtual methods
.method public evaluate()D
    .registers 3

    iget-wide v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-wide v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(D)V
    .registers 4

    iput-wide p1, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    return-void
.end method

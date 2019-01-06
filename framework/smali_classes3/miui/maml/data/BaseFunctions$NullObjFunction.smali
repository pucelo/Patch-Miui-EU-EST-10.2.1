.class Lmiui/maml/data/BaseFunctions$NullObjFunction;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullObjFunction"
.end annotation


# instance fields
.field private mObjName:Ljava/lang/String;

.field private mVarIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .registers 7

    const/4 v1, 0x0

    const/4 v3, -0x1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    if-eq v0, v2, :cond_22

    iput-object v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_29

    :cond_20
    iput v3, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    :cond_22
    :goto_22
    iget v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    if-ne v2, v3, :cond_32

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    return-wide v2

    :cond_29
    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    goto :goto_22

    :cond_32
    iget v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    invoke-virtual {p2, v2}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    int-to-double v2, v1

    return-wide v2
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

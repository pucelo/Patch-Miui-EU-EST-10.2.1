.class public Lmiui/maml/data/RootExpression;
.super Lmiui/maml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/RootExpression$VarVersion;,
        Lmiui/maml/data/RootExpression$VarVersionVisitor;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lmiui/maml/data/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

.field private mVars:Lmiui/maml/data/Variables;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/maml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lmiui/maml/data/RootExpression$VarVersion;


# direct methods
.method static synthetic -set0(Lmiui/maml/data/RootExpression;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    return p1
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iput-object p1, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    iput-object p2, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .registers 2

    return-void
.end method

.method public addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate()D
    .registers 8

    const/4 v6, 0x0

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    if-nez v4, :cond_41

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_29

    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_2f

    iput-object v6, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    :cond_29
    :goto_29
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    :cond_2c
    :goto_2c
    iget-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    return-wide v4

    :cond_2f
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_29

    :cond_41
    const/4 v1, 0x0

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_52

    const/4 v1, 0x1

    :cond_47
    if-eqz v1, :cond_2c

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    goto :goto_2c

    :cond_52
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_47

    const/4 v0, 0x0

    :goto_57
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_47

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    if-eqz v3, :cond_6f

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;->getVer(Lmiui/maml/data/Variables;)I

    move-result v2

    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_6f

    const/4 v1, 0x1

    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_57
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 7

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    if-nez v4, :cond_35

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_2f

    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    :cond_32
    :goto_32
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v4

    :cond_35
    const/4 v1, 0x0

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_46

    const/4 v1, 0x1

    :cond_3b
    if-eqz v1, :cond_32

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    goto :goto_32

    :cond_46
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_3b

    const/4 v0, 0x0

    :goto_4b
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_3b

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    if-eqz v3, :cond_63

    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;->getVer(Lmiui/maml/data/Variables;)I

    move-result v2

    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_63

    const/4 v1, 0x1

    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b
.end method

.method public isNull()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method

.class public Lmiui/maml/ActionCommand$ObjVar;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ObjVar"
.end annotation


# instance fields
.field private mIndex:I

.field private mIndexArr:Lmiui/maml/data/Expression;

.field private mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    move-object v3, p1

    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_25

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_25} :catch_2c

    :cond_25
    :goto_25
    invoke-virtual {p2, v3}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    return-void

    :catch_2c
    move-exception v0

    goto :goto_25
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    invoke-virtual {v2, v3}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_21

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_21

    :try_start_13
    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    aget-object v2, v1, v2
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    move-exception v0

    return-object v4

    :cond_21
    return-object v1
.end method

.class public Lmiui/maml/data/IndexedVariable;
.super Ljava/lang/Object;
.source "IndexedVariable.java"


# instance fields
.field protected mIndex:I

.field private mIsNumber:Z

.field protected mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_12

    invoke-virtual {p2, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    :goto_d
    iput v0, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    iput-object p2, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    return-void

    :cond_12
    invoke-virtual {p2, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArr(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArrDouble(I)D
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArrDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getArrString(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArrString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDouble()D
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getIndex()I
    .registers 2

    iget v0, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVariables()Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method public final getVersion()I
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    iget-boolean v2, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->getVer(IZ)I

    move-result v0

    return v0
.end method

.method public final isNull()Z
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->existsDouble(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final isNull(I)Z
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->existsArrItem(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_e

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final set(D)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->putDouble(ILjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final setArr(ID)Z
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lmiui/maml/data/Variables;->putArr(IID)Z

    move-result v0

    return v0
.end method

.method public final setArr(ILjava/lang/Object;)Z
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->putArrDouble(IILjava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->putArr(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_c
.end method

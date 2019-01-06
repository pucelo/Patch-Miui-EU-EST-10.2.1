.class public Lmiui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Variables$BaseVarBucket;,
        Lmiui/maml/data/Variables$DoubleBucket;,
        Lmiui/maml/data/Variables$DoubleInfo;,
        Lmiui/maml/data/Variables$ValueInfo;,
        Lmiui/maml/data/Variables$VarBucket;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

.field private mObjectBucket:Lmiui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/data/Variables$VarBucket",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/data/Variables$DoubleBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$DoubleBucket;-><init>(Lmiui/maml/data/Variables$DoubleBucket;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    new-instance v0, Lmiui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$VarBucket;-><init>(Lmiui/maml/data/Variables$VarBucket;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    return-void
.end method

.method private static dbglog(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "Variables"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private getArrInner(II)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getArrInner: designated object is not an array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_20
    return-object v5

    :cond_21
    aget-object v3, v0, p2
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_23} :catch_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_23} :catch_24

    return-object v3

    :catch_24
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getArrInner: designated index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_20

    :catch_48
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getArrInner: designated object type is not correct. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_20
.end method


# virtual methods
.method public createArray(Ljava/lang/String;ILjava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    if-gtz p2, :cond_6

    :cond_5
    return v3

    :cond_6
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    :try_start_10
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_19

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 v3, 0x1

    return v3

    :catch_19
    move-exception v1

    return v3

    :cond_1b
    return v3
.end method

.method public existsArrItem(II)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    if-ltz p2, :cond_11

    :try_start_a
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_12

    move-result v3

    if-ge p2, v3, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2

    :catch_12
    move-exception v1

    return v2
.end method

.method public existsDouble(I)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->exists(I)Z

    move-result v0

    return v0
.end method

.method public existsDouble(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public existsObj(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArr(II)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArrDouble(II)D
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getArrDouble: designated array does not exist. index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_1d
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_20
    instance-of v2, v0, [Z

    if-eqz v2, :cond_2f

    check-cast v0, [Z

    aget-boolean v2, v0, p1

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :goto_2b
    int-to-double v2, v2

    return-wide v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2f
    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-wide v2

    return-wide v2

    :catch_34
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getArrDouble: designated index is invalid. index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " arrIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public getArrString(II)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(I)D
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVer(IZ)I
    .registers 4

    if-eqz p2, :cond_9

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->getVer(I)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result v0

    goto :goto_8
.end method

.method public final put(ID)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/data/Variables$DoubleBucket;->put(ID)V

    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final put(Ljava/lang/String;D)V
    .registers 6

    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public putArr(IID)Z
    .registers 16

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putArr: designated array does not exist. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    return v7

    :cond_20
    instance-of v4, v2, [D

    if-eqz v4, :cond_2e

    move-object v0, v2

    check-cast v0, [D

    move-object v4, v0

    aput-wide p3, v4, p2

    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1, v2}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    return v6

    :cond_2e
    instance-of v4, v2, [B

    if-eqz v4, :cond_6f

    move-object v0, v2

    check-cast v0, [B

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v4, p2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    goto :goto_2a

    :catch_3c
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putArr: failed. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " arrIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    return v7

    :cond_6f
    :try_start_6f
    instance-of v4, v2, [C

    if-eqz v4, :cond_7d

    move-object v0, v2

    check-cast v0, [C

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    int-to-char v5, v5

    aput-char v5, v4, p2

    goto :goto_2a

    :cond_7d
    instance-of v4, v2, [F

    if-eqz v4, :cond_89

    move-object v0, v2

    check-cast v0, [F

    move-object v4, v0

    double-to-float v5, p3

    aput v5, v4, p2

    goto :goto_2a

    :cond_89
    instance-of v4, v2, [I

    if-eqz v4, :cond_96

    move-object v0, v2

    check-cast v0, [I

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    aput v5, v4, p2

    goto :goto_2a

    :cond_96
    instance-of v4, v2, [J

    if-eqz v4, :cond_a2

    move-object v0, v2

    check-cast v0, [J

    move-object v4, v0

    double-to-long v8, p3

    aput-wide v8, v4, p2

    goto :goto_2a

    :cond_a2
    instance-of v4, v2, [S

    if-eqz v4, :cond_b1

    move-object v0, v2

    check-cast v0, [S

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    int-to-short v5, v5

    aput-short v5, v4, p2

    goto/16 :goto_2a

    :cond_b1
    instance-of v4, v2, [Z

    if-eqz v4, :cond_2a

    move-object v0, v2

    check-cast v0, [Z

    move-object v4, v0

    const-wide/16 v8, 0x0

    cmpl-double v5, p3, v8

    if-lez v5, :cond_c4

    move v5, v6

    :goto_c0
    aput-boolean v5, v4, p2
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_c2} :catch_3c

    goto/16 :goto_2a

    :cond_c4
    move v5, v7

    goto :goto_c0
.end method

.method public putArr(IILjava/lang/Object;)Z
    .registers 9

    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putArr: designated array does not exist. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_1f
    const/4 v3, 0x0

    return v3

    :cond_21
    aput-object p3, v0, p2

    invoke-virtual {p0, p1, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_26} :catch_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_26} :catch_28

    const/4 v3, 0x1

    return v3

    :catch_28
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putArr: designated array index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_1f

    :catch_4c
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putArr: designated object is not an object array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public putArrDouble(IILjava/lang/Object;)Z
    .registers 8

    instance-of v1, p3, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lmiui/maml/data/Variables;->putArr(IID)Z

    move-result v1

    return v1

    :cond_f
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1f

    :try_start_13
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lmiui/maml/data/Variables;->putArr(IID)Z
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1c} :catch_1e

    move-result v1

    return v1

    :catch_1e
    move-exception v0

    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public final putDouble(ILjava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_10

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lmiui/maml/data/Variables;->put(ID)V

    return v2

    :cond_10
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_22

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1d

    move v1, v2

    :cond_1d
    int-to-double v4, v1

    invoke-virtual {p0, p1, v4, v5}, Lmiui/maml/data/Variables;->put(ID)V

    return v2

    :cond_22
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_31

    :try_start_26
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lmiui/maml/data/Variables;->put(ID)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2f} :catch_30

    return v2

    :catch_30
    move-exception v0

    :cond_31
    return v1
.end method

.method public final putNum(Ljava/lang/String;D)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerVariable(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$DoubleBucket;->reset()V

    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$VarBucket;->reset()V

    return-void
.end method

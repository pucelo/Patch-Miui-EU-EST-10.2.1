.class Lmiui/maml/data/Variables$VarBucket;
.super Lmiui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/maml/data/Variables$BaseVarBucket;"
    }
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$ValueInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/data/Variables$BaseVarBucket;-><init>(Lmiui/maml/data/Variables$BaseVarBucket;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$VarBucket;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/data/Variables$VarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$ValueInfo;
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_a} :catch_11
    .catchall {:try_start_2 .. :try_end_a} :catchall_14

    if-nez v1, :cond_e

    :goto_c
    monitor-exit p0

    return-object v2

    :cond_e
    :try_start_e
    iget-object v2, v1, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_10} :catch_11
    .catchall {:try_start_e .. :try_end_10} :catchall_14

    goto :goto_c

    :catch_11
    move-exception v0

    monitor-exit p0

    return-object v2

    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getVer(I)I
    .registers 6

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$ValueInfo;
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_a} :catch_11
    .catchall {:try_start_2 .. :try_end_a} :catchall_14

    if-nez v1, :cond_e

    :goto_c
    monitor-exit p0

    return v2

    :cond_e
    :try_start_e
    iget v2, v1, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_10} :catch_11
    .catchall {:try_start_e .. :try_end_10} :catchall_14

    goto :goto_c

    :catch_11
    move-exception v0

    monitor-exit p0

    return v2

    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onAddItem(I)V
    .registers 4

    :goto_0
    iget-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    iget-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_f
    return-void
.end method

.method public final declared-synchronized put(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    if-gez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$ValueInfo;

    if-nez v1, :cond_1c

    new-instance v1, Lmiui/maml/data/Variables$ValueInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lmiui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_1a} :catch_20
    .catchall {:try_start_5 .. :try_end_1a} :catchall_22

    :goto_1a
    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    invoke-virtual {v1, p2}, Lmiui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_22

    goto :goto_1a

    :catch_20
    move-exception v0

    goto :goto_1a

    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reset()V
    .registers 5

    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Variables$ValueInfo;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lmiui/maml/data/Variables$ValueInfo;->reset()V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

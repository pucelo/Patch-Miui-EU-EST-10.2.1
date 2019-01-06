.class Lmiui/maml/data/Variables$DoubleBucket;
.super Lmiui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleBucket"
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$DoubleInfo;",
            ">;"
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

    iput-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$DoubleBucket;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/data/Variables$DoubleBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized exists(I)Z
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    if-gez p1, :cond_6

    :cond_4
    :goto_4
    monitor-exit p0

    return v1

    :cond_6
    :try_start_6
    iget-object v2, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_b} :catch_10
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :catch_10
    move-exception v0

    monitor-exit p0

    return v1

    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)D
    .registers 7

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v4, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$DoubleInfo;
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_b} :catch_12
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    if-nez v1, :cond_f

    :goto_d
    monitor-exit p0

    return-wide v2

    :cond_f
    :try_start_f
    iget-wide v2, v1, Lmiui/maml/data/Variables$DoubleInfo;->mValue:D
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_11} :catch_12
    .catchall {:try_start_f .. :try_end_11} :catchall_15

    goto :goto_d

    :catch_12
    move-exception v0

    monitor-exit p0

    return-wide v2

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getVer(I)I
    .registers 6

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$DoubleInfo;
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_a} :catch_11
    .catchall {:try_start_2 .. :try_end_a} :catchall_14

    if-nez v1, :cond_e

    :goto_c
    monitor-exit p0

    return v2

    :cond_e
    :try_start_e
    iget v2, v1, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I
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
    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_f
    return-void
.end method

.method public final declared-synchronized put(ID)V
    .registers 8

    monitor-enter p0

    if-gez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v2, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$DoubleInfo;

    if-nez v1, :cond_1c

    new-instance v1, Lmiui/maml/data/Variables$DoubleInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lmiui/maml/data/Variables$DoubleInfo;-><init>(DI)V

    iget-object v2, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_1a} :catch_20
    .catchall {:try_start_5 .. :try_end_1a} :catchall_22

    :goto_1a
    monitor-exit p0

    return-void

    :cond_1c
    :try_start_1c
    invoke-virtual {v1, p2, p3}, Lmiui/maml/data/Variables$DoubleInfo;->setValue(D)V
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
    .registers 7

    iget-object v3, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    iget-object v3, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Variables$DoubleInfo;

    if-eqz v2, :cond_18

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/Variables$DoubleInfo;->setValue(D)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method

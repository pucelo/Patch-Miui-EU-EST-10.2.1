.class public Landroid/metrics/LogMaker;
.super Ljava/lang/Object;
.source "LogMaker.java"


# static fields
.field public static final MAX_SERIALIZED_SIZE:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "LogBuilder"


# instance fields
.field private entries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->deserialize([Ljava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    goto :goto_f
.end method


# virtual methods
.method public addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
    .registers 6

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->clearTaggedData(I)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->isValidValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value must be loggable type - int, long, float, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_42

    const-string/jumbo v0, "LogBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Log value too long, omitted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-object p0

    :cond_42
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_41
.end method

.method public clearCategory()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method public clearPackageName()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method public clearProcessId()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method public clearSubtype()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method public clearTaggedData(I)Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object p0
.end method

.method public clearTimestamp()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method public clearType()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method public clearUid()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method

.method public deserialize([Ljava/lang/Object;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eqz p1, :cond_4b

    array-length v4, p1

    if-ge v1, v4, :cond_4b

    add-int/lit8 v0, v1, 0x1

    aget-object v2, p1, v1

    array-length v4, p1

    if-ge v0, v4, :cond_24

    add-int/lit8 v1, v0, 0x1

    aget-object v3, p1, v0

    move v0, v1

    :goto_13
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_22
    move v1, v0

    goto :goto_2

    :cond_24
    const/4 v3, 0x0

    goto :goto_13

    :cond_26
    const-string/jumbo v5, "LogBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid key "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_46

    const-string/jumbo v4, "null"

    :goto_3a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_46
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    :cond_4b
    return-void
.end method

.method public getCategory()I
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x2f5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getCounterBucket()J
    .registers 5

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_13
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getCounterName()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x31f

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCounterValue()I
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x322

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x326

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProcessId()I
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x361

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, -0x1

    return v1
.end method

.method public getSubtype()I
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x2f7

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getTaggedData(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .registers 5

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x325

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_13
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getType()I
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x2f6

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getUid()I
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x3af

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_13
    const/4 v1, -0x1

    return v1
.end method

.method public isLongCounterBucket()Z
    .registers 4

    iget-object v1, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    return v1
.end method

.method public isSubsetOf(Landroid/metrics/LogMaker;)Z
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return v5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2f

    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_24

    if-eqz v2, :cond_24

    :cond_23
    return v5

    :cond_24
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2f
    const/4 v4, 0x1

    return v4
.end method

.method public isValidValue(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Float;

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public serialize()[Ljava/lang/Object;
    .registers 7

    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    mul-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v2, v3

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_64

    const-string/jumbo v3, "LogBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Log line too long, did not emit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    :cond_64
    return-object v1
.end method

.method public setCategory(I)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x326

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x367

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setCounterBucket(I)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x321

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setCounterBucket(J)Landroid/metrics/LogMaker;
    .registers 6

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x321

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setCounterValue(I)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x322

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setLatency(J)Landroid/metrics/LogMaker;
    .registers 6

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x319

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setProcessId(I)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x361

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setSubtype(I)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTimestamp(J)Landroid/metrics/LogMaker;
    .registers 6

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x325

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setType(I)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setUid(I)Landroid/metrics/LogMaker;
    .registers 5

    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3af

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

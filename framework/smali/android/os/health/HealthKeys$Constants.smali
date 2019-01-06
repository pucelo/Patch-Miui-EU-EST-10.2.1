.class public Landroid/os/health/HealthKeys$Constants;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# instance fields
.field private final mDataType:Ljava/lang/String;

.field private final mKeys:[[I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x5

    new-array v9, v9, [[I

    iput-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    const-class v1, Landroid/os/health/HealthKeys$Constant;

    array-length v0, v5

    iget-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    array-length v9, v9

    new-array v7, v9, [Landroid/os/health/HealthKeys$SortedIntArray;

    const/4 v6, 0x0

    :goto_1b
    array-length v9, v7

    if-ge v6, v9, :cond_28

    new-instance v9, Landroid/os/health/HealthKeys$SortedIntArray;

    invoke-direct {v9, v0}, Landroid/os/health/HealthKeys$SortedIntArray;-><init>(I)V

    aput-object v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_28
    const/4 v6, 0x0

    :goto_29
    if-ge v6, v0, :cond_94

    aget-object v4, v5, v6

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Landroid/os/health/HealthKeys$Constant;

    if-eqz v2, :cond_6b

    invoke-interface {v2}, Landroid/os/health/HealthKeys$Constant;->type()I

    move-result v8

    array-length v9, v7

    if-lt v8, v9, :cond_61

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown Constant type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_61
    :try_start_61
    aget-object v9, v7, v8

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/health/HealthKeys$SortedIntArray;->addValue(I)V
    :try_end_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_61 .. :try_end_6b} :catch_6e

    :cond_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :catch_6e
    move-exception v3

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t read constant value type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " field="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_94
    const/4 v6, 0x0

    :goto_95
    array-length v9, v7

    if-ge v6, v9, :cond_a5

    iget-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v10, v7, v6

    invoke-virtual {v10}, Landroid/os/health/HealthKeys$SortedIntArray;->getArray()[I

    move-result-object v10

    aput-object v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    :cond_a5
    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex(II)I
    .registers 7

    iget-object v1, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v1, v1, p1

    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_b

    return v0

    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown Constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeys(I)[I
    .registers 3

    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSize(I)I
    .registers 3

    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method

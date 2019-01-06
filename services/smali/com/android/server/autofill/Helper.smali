.class public final Lcom/android/server/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static sDebug:Z

.field static sPartitionMaxCount:I

.field public static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const/16 v0, 0xa

    sput v0, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static append(Ljava/lang/StringBuilder;Landroid/os/Bundle;)V
    .registers 8

    if-eqz p1, :cond_8

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    :cond_8
    const-string/jumbo v4, "null"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v4, "[Bundle with "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " extras:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_55

    check-cast v3, [Ljava/util/Objects;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_55
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_59
    const/16 v4, 0x5d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/server/autofill/Helper;->append(Ljava/lang/StringBuilder;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v2, :cond_25

    const/4 v3, 0x0

    :goto_b
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_2a

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_b

    :cond_2a
    return-object v0
.end method

.method public static newLogMaker(ILjava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5

    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    if-eqz p2, :cond_10

    const/16 v1, 0x38c

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_10
    return-object v0
.end method

.method static toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v0, v2, [Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1c
    return-object v0
.end method

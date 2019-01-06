.class public Lcom/miui/internal/search/RankedCursor;
.super Landroid/database/AbstractCursor;
.source "RankedCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/search/RankedCursor$ScoredData;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/internal/search/RankedCursor$ScoredData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/search/RankedCursor;->columnNames:[Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/RankedCursor;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .registers 6

    if-ltz p1, :cond_6

    iget v1, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    if-lt p1, v1, :cond_2d

    :cond_6
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", # of columns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    invoke-virtual {p0}, Lcom/miui/internal/search/RankedCursor;->getPosition()I

    move-result v0

    if-gez v0, :cond_3c

    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v2, "Before first row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    invoke-virtual {p0}, Lcom/miui/internal/search/RankedCursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_4b

    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v2, "After last row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    iget-object v1, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-static {v1, p1}, Lcom/miui/internal/search/RankedCursor$ScoredData;->-wrap0(Lcom/miui/internal/search/RankedCursor$ScoredData;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addRow(D[Ljava/lang/String;)V
    .registers 9

    array-length v2, p3

    iget v3, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    if-eq v2, v3, :cond_2d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "columnNames.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/miui/internal/search/RankedCursor;->columnCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", columnValues.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    new-instance v1, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/internal/search/RankedCursor$ScoredData;-><init>(D[Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_33
    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/RankedCursor$ScoredData;

    invoke-virtual {v1, v2}, Lcom/miui/internal/search/RankedCursor$ScoredData;->compareTo(Lcom/miui/internal/search/RankedCursor$ScoredData;)I

    move-result v2

    if-lez v2, :cond_4f

    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_52
    iget-object v2, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBlob(I)[B
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/RankedCursor;->data:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 6

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    return-wide v2

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getFloat(I)F
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .registers 6

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getShort(I)S
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/search/RankedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

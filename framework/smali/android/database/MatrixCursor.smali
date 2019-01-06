.class public Landroid/database/MatrixCursor;
.super Landroid/database/AbstractCursor;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/MatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method static synthetic -get0(Landroid/database/MatrixCursor;)I
    .registers 2

    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    return v0
.end method

.method static synthetic -get1(Landroid/database/MatrixCursor;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/database/MatrixCursor;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    iput-object p1, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_f

    const/4 p2, 0x1

    :cond_f
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    return-void
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-eq v2, v3, :cond_2f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "columnNames.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", columnValues.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2f
    iget v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_38
    if-ge v0, v2, :cond_45

    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_45
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1a

    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    if-ge v0, p1, :cond_10

    move v0, p1

    :cond_10
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .registers 5

    if-ltz p1, :cond_6

    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_2d

    :cond_6
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    if-gez v0, :cond_3a

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_49

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v8, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v6, v7, v8

    iget v7, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int v4, v6, v7

    invoke-direct {p0, v4}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    instance-of v7, p1, Ljava/util/ArrayList;

    if-eqz v7, :cond_17

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    return-void

    :cond_17
    move v2, v6

    iget-object v5, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v4, :cond_33

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "columnValues.size() > columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_33
    add-int/lit8 v3, v2, 0x1

    aput-object v0, v5, v2

    move v2, v3

    goto :goto_1e

    :cond_39
    if-eq v2, v4, :cond_44

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "columnValues.size() < columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_44
    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    return-void
.end method

.method public addRow([Ljava/lang/Object;)V
    .registers 6

    array-length v1, p1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_2d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getBlob(I)[B
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .registers 6

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public newRow()Landroid/database/MatrixCursor$RowBuilder;
    .registers 5

    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    new-instance v2, Landroid/database/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1}, Landroid/database/MatrixCursor$RowBuilder;-><init>(Landroid/database/MatrixCursor;I)V

    return-object v2
.end method

.class public Landroid/database/MergeCursor;
.super Landroid/database/AbstractCursor;
.source "MergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/MergeCursor$1;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mCursors:[Landroid/database/Cursor;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .registers 5

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    new-instance v1, Landroid/database/MergeCursor$1;

    invoke-direct {v1, p0}, Landroid/database/MergeCursor$1;-><init>(Landroid/database/MergeCursor;)V

    iput-object v1, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    :goto_12
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1d

    :cond_2a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_17

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_17
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    return-void
.end method

.method public deactivate()V
    .registers 4

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    return-void
.end method

.method public getBlob(I)[B
    .registers 3

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 5

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_19

    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return v0
.end method

.method public getDouble(I)D
    .registers 4

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .registers 3

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3

    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 9

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v4

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_24

    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    if-nez v4, :cond_13

    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    if-ge p2, v4, :cond_31

    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    iput-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    :cond_24
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int v5, p2, v0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    return v3

    :cond_31
    iget-object v4, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_10

    :cond_3b
    const/4 v4, 0x0

    return v4
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 5

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public requery()Z
    .registers 4

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_1b

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    return v2

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 5

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

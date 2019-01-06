.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/database/SortCursor$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method static synthetic -set0(Lcom/android/internal/database/SortCursor;I)I
    .registers 2

    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method

.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x40

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput v7, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    new-instance v5, Lcom/android/internal/database/SortCursor$1;

    invoke-direct {v5, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v5

    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v3, :cond_4d

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    if-nez v5, :cond_30

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_30
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v1

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    goto :goto_2d

    :cond_4d
    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, ""

    const/4 v2, 0x0

    :goto_53
    if-ge v2, v3, :cond_86

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_68

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_68
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v6, v6, v2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7e

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_65

    :cond_7e
    move-object v4, v0

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_65

    :cond_86
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_8b
    if-ltz v1, :cond_95

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    const/4 v6, -0x2

    aput v6, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8b

    :cond_95
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v7, v6, v9

    const/4 v7, 0x1

    aput v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_17

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_17
    return-void
.end method

.method public deactivate()V
    .registers 4

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_17

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_c

    :cond_17
    return-void
.end method

.method public getBlob(I)[B
    .registers 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_b
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_23

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .registers 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_19

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

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

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 16

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-ne p1, p2, :cond_7

    return v11

    :cond_7
    rem-int/lit8 v0, p2, 0x40

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aget v8, v8, v0

    if-ne v8, p2, :cond_35

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aget v7, v8, v0

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v7

    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v8, :cond_27

    const-string/jumbo v8, "SortCursor"

    const-string/jumbo v9, "onMove: cache results in a null cursor."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_27
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v9, v9, v0

    aget v9, v9, v7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    iput v0, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    return v11

    :cond_35
    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v8

    iget v8, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    if-ltz v8, :cond_5a

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v4, :cond_5a

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    if-nez v8, :cond_4a

    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_4a
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    iget v10, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    aget-object v9, v9, v10

    aget v9, v9, v2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_47

    :cond_5a
    if-lt p2, p1, :cond_5e

    if-ne p1, v12, :cond_73

    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    if-ge v2, v4, :cond_72

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    if-nez v8, :cond_6a

    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_6a
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_67

    :cond_72
    const/4 p1, 0x0

    :cond_73
    if-gez p1, :cond_76

    const/4 p1, 0x0

    :cond_76
    const/4 v6, -0x1

    move v2, p1

    :goto_78
    if-gt v2, p2, :cond_ad

    const-string/jumbo v5, ""

    const/4 v6, -0x1

    const/4 v3, 0x0

    :goto_7f
    if-ge v3, v4, :cond_ab

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    if-eqz v8, :cond_91

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_94

    :cond_91
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_94
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v9, v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ltz v6, :cond_a8

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_91

    :cond_a8
    move-object v5, v1

    move v6, v3

    goto :goto_91

    :cond_ab
    if-ne v2, p2, :cond_d5

    :cond_ad
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v6

    iput-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aput p2, v8, v0

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aput v6, v8, v0

    const/4 v2, 0x0

    :goto_bc
    if-ge v2, v4, :cond_e5

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v2

    if-eqz v8, :cond_d2

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v8, v8, v0

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    aput v9, v8, v2

    :cond_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_d5
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v6

    if-eqz v8, :cond_e2

    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    :cond_e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_e5
    iput v12, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    return v11
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

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

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_1b

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

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

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

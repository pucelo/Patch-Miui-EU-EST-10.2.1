.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mIdleConnectionTimeout:J

.field private mLookasideSlotCount:I

.field private mLookasideSlotSize:I

.field private mOpenFlags:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-get4(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-get3(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-get5(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-get0(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-get1(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-void
.end method


# virtual methods
.method public addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 3

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    return-object p0
.end method

.method public build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .registers 10

    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    iget v5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJLandroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-object v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 4

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    return-object p0
.end method

.method public setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method public setErrorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object p0
.end method

.method public setIdleConnectionTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "idle connection timeout cannot be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    return-object p0

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setLookasideConfig(II)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_3f

    move v0, v1

    :goto_5
    const-string/jumbo v3, "lookasideSlotCount cannot be negative"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ltz p2, :cond_41

    move v0, v1

    :goto_e
    const-string/jumbo v3, "lookasideSlotSize cannot be negative"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p1, :cond_43

    if-lez p2, :cond_43

    :cond_18
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid configuration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    iput p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    return-object p0

    :cond_3f
    move v0, v2

    goto :goto_5

    :cond_41
    move v0, v2

    goto :goto_e

    :cond_43
    if-nez p2, :cond_47

    if-eqz p1, :cond_18

    :cond_47
    move v1, v2

    goto :goto_18
.end method

.method public setOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .registers 2

    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    return-object p0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 3

    const/high16 v0, 0x20000000

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    goto :goto_7
.end method

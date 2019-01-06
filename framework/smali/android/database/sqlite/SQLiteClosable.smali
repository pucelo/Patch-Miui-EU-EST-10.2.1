.class public abstract Landroid/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    return-void
.end method


# virtual methods
.method public acquireReference()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-gtz v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attempt to re-open an already-closed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    :try_start_22
    iget v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f

    monitor-exit p0

    return-void
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void
.end method

.method protected abstract onAllReferencesReleased()V
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    return-void
.end method

.method public releaseReference()V
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_14

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_b

    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseReferenceFromContainer()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_14

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_b

    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

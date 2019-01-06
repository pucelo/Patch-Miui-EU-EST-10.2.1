.class public Landroid/content/CursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    iput-object p2, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iput-object p4, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iput-object p6, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .registers 2

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/CursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroid/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_19
    if-eqz v0, :cond_28

    if-eq v0, p1, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    monitor-exit p0

    :try_start_18
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_45

    move-result-object v7

    if-eqz v7, :cond_3a

    :try_start_32
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    iget-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3a} :catch_40
    .catchall {:try_start_32 .. :try_end_3a} :catchall_45

    :cond_3a
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3c
    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_4c

    monitor-exit p0

    return-object v7

    :catch_40
    move-exception v8

    :try_start_41
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v8
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_48
    iput-object v1, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4f

    monitor-exit p0

    throw v0

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1a
    iput-object v1, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    :cond_9
    invoke-virtual {p0}, Landroid/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_16

    :cond_13
    invoke-virtual {p0}, Landroid/content/CursorLoader;->forceLoad()V

    :cond_16
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    invoke-virtual {p0}, Landroid/content/CursorLoader;->cancelLoad()Z

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-void
.end method

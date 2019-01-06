.class public final Landroid/database/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Landroid/database/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    return-void
.end method

.method private throwIfCursorIsClosed()V
    .registers 3

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-nez v0, :cond_d

    new-instance v0, Landroid/database/StaleDataException;

    const-string/jumbo v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v1, :cond_f

    :try_start_8
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->close()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10
    .catchall {:try_start_8 .. :try_end_d} :catchall_1b

    :goto_d
    iput-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    :cond_f
    return-void

    :catch_10
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "Remote process exception when closing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_d

    :catchall_1b
    move-exception v1

    iput-object v3, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    throw v1
.end method

.method public deactivate()V
    .registers 4

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v1, :cond_c

    :try_start_7
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->deactivate()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "Remote process exception when deactivating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    iget v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    :try_start_3
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->getExtras()Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getObserver()Landroid/database/IContentObserver;
    .registers 2

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-virtual {v0}, Landroid/database/AbstractCursor$SelfContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/database/BulkCursorDescriptor;)V
    .registers 3

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    iget-boolean v0, p1, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    iput-boolean v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    iget v0, p1, Landroid/database/BulkCursorDescriptor;->count:I

    iput v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_19

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {p0, v0}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V

    :cond_19
    return-void
.end method

.method public onMove(II)Z
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    :try_start_4
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-ge p2, v1, :cond_1e

    :cond_10
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_37

    :cond_19
    :goto_19
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_42

    return v3

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_10

    iget-boolean v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->onMove(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_37

    goto :goto_19

    :catch_37
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "Unable to get window because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_42
    const/4 v1, 0x1

    return v1
.end method

.method public requery()Z
    .registers 6

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    :try_start_5
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/IBulkCursor;->requery(Landroid/database/IContentObserver;)I

    move-result v1

    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    iget v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    if-eq v1, v3, :cond_20

    const/4 v1, -0x1

    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->closeWindow()V

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    const/4 v1, 0x1

    return v1

    :cond_20
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_24

    return v4

    :catch_24
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to requery because the remote process exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V

    return v4
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    :try_start_3
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p1}, Landroid/database/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    :catch_a
    move-exception v0

    const-string/jumbo v1, "BulkCursor"

    const-string/jumbo v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v1
.end method

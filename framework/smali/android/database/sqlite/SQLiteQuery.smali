.class public final Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    iput-object p3, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method fillWindow(Landroid/database/CursorWindow;IIZ)I
    .registers 17

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    :try_start_3
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5c

    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getConnectionFlags()I

    move-result v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroid/os/CancellationSignal;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_20} :catch_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_20} :catch_28
    .catchall {:try_start_6 .. :try_end_20} :catchall_57

    move-result v11

    :try_start_21
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_5c

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return v11

    :catch_28
    move-exception v10

    :try_start_29
    const-string/jumbo v0, "SQLiteQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v10
    :try_end_57
    .catchall {:try_start_29 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    :try_start_58
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0

    :catch_61
    move-exception v9

    :try_start_62
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->onCorruption()V

    throw v9
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_57
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
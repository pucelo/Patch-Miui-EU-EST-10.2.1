.class Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
.super Landroid/os/Handler;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleConnectionHandler"
.end annotation


# instance fields
.field private final mTimeout:J

.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;J)V
    .registers 6

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-wide p3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    return-void
.end method


# virtual methods
.method connectionAcquired(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->removeMessages(I)V

    return-void
.end method

.method connectionClosed(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->removeMessages(I)V

    return-void
.end method

.method connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->-get2(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->-get1(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_63

    move-result-object v0

    if-eq p0, v0, :cond_11

    monitor-exit v1

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->-wrap0(Landroid/database/sqlite/SQLiteConnectionPool;I)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "SQLiteConnectionPool"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Closed idle connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->-get0(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_11 .. :try_end_61} :catchall_63

    :cond_61
    monitor-exit v1

    return-void

    :catchall_63
    move-exception v0

    monitor-exit v1

    throw v0
.end method

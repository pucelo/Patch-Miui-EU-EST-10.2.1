.class public Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/data/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lmiui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lmiui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    :try_start_0
    invoke-super {p0, p1}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_3} :catch_1a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_3} :catch_f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_f
    move-exception v2

    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1a
    move-exception v1

    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

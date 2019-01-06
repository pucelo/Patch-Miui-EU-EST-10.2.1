.class public Lcom/xiaomi/mistatistic/sdk/controller/f;
.super Ljava/lang/Object;
.source "EventDAO.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Lcom/xiaomi/mistatistic/sdk/controller/i;


# instance fields
.field private d:Z

.field private e:Lcom/xiaomi/mistatistic/sdk/a;

.field private f:Z

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/f$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/f;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/f;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    return-object p1
.end method

.method public static a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 10

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    const/4 v9, 0x2

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v9, 0x4

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x5

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x7

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    iput-object v6, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    iput-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    iput-object v7, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    iput v8, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->anonymous:I

    return-object v0
.end method

.method public static a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    return p1
.end method

.method private g()V
    .locals 4

    iget-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v1, :cond_1

    :goto_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ensureServiceBinded"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "unbind service before bind it again!"

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x0

    sget-boolean v4, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    iget-boolean v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_4

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    return-object v10

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v4, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process query, result is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_4
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "queryCustomEvent"

    invoke-static {v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v10
.end method

.method public a(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    sget-boolean v5, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v5, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(J)Ljava/util/List;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    iget-boolean v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-nez v5, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4

    :cond_3
    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v5, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(J)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process getAll, result size is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_5
    move v5, v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "getAllEventOrderByTimestampDescend"

    invoke-static {v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4
.end method

.method public a(JJ)V
    .locals 3

    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(JJ)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "startTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "deleteEventsByStartAndEndTS"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 3

    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "StatEventPojo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "insertNewEvent"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "newValue"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "updateEventByKeyAndCategory"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    sget-object v10, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v10

    :try_start_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const-string/jumbo v1, "mistat_event"

    const/4 v2, 0x0

    const-string/jumbo v3, "category=? AND key=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    if-nez v8, :cond_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9

    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v13

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    :catch_0
    move-exception v11

    :try_start_4
    const-string/jumbo v1, "EventDAO"

    const-string/jumbo v2, "queryCustomEvent exception"

    invoke-static {v1, v2, v11}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_3

    :goto_3
    :try_start_5
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v12

    if-nez v8, :cond_4

    :goto_4
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v12

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public b(J)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    const/4 v2, 0x0

    sget-object v15, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v15

    :try_start_0
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :try_start_1
    new-array v6, v3, [Ljava/lang/String;

    const-string/jumbo v3, "mistat_event"

    const-string/jumbo v5, "ts<?"

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string/jumbo v9, "ts DESC"

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    if-nez v14, :cond_3

    :cond_0
    :goto_0
    if-nez v14, :cond_5

    :cond_1
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_1
    monitor-exit v15

    return-object v13

    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v13

    :cond_3
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ts"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const-string/jumbo v5, "ts<? AND ts>=? AND anonymous=?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    const/4 v4, 0x2

    if-nez v3, :cond_4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v4

    const-string/jumbo v3, "mistat_event"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "ts DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_3
    invoke-static {v14}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :catch_0
    move-exception v18

    :try_start_4
    const-string/jumbo v3, "EventDAO"

    const-string/jumbo v4, "Error while reading data from DB"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v12

    :catchall_1
    move-exception v11

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public b()V
    .locals 3

    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "deleteOldEvents"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(JJ)V
    .locals 9

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string/jumbo v7, "EventDAO"

    const-string/jumbo v8, "deleteEventsByStartAndEndTS, start:%d, end:%d"

    invoke-static {v7, v8, v6}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "ts<=? AND ts>=? AND anonymous=?"

    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    iget-boolean v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    const/4 v7, 0x2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    aput-object v6, v4, v7

    const-string/jumbo v6, "mistat_event"

    invoke-virtual {v2, v6, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const/4 v6, 0x1

    :try_start_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v6, "EventDAO"

    const-string/jumbo v7, "Error while deleting event by ts from DB"

    invoke-static {v6, v7, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v5

    :try_start_5
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    const-string/jumbo v7, "category"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string/jumbo v7, "key"

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "ts"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string/jumbo v7, "type"

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string/jumbo v7, "value"

    if-nez v6, :cond_2

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string/jumbo v7, "extra"

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->anonymous:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "anonymous"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v6, "mistat_event"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const-string/jumbo v6, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v6, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v6, ""

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error to insert data into DB, key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "EventDAO"

    invoke-static {v7, v6, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_4

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catchall_1
    move-exception v4

    :try_start_4
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "value"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const-string/jumbo v7, "mistat_event"

    const-string/jumbo v8, "category=? AND key=?"

    invoke-virtual {v2, v7, v0, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error to update data from DB, key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "EventDAO"

    invoke-static {v7, v6, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catchall_1
    move-exception v4

    :try_start_4
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public c()V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v10, 0xf731400

    sub-long v2, v0, v10

    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v4

    const/4 v5, 0x0

    :try_start_0
    sget-object v10, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v10}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "mistat_event"

    const-string/jumbo v12, "ts<=? and category <> ?"

    const/4 v13, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    const-string/jumbo v13, "mistat_basic"

    const/4 v14, 0x1

    aput-object v13, v10, v14

    invoke-virtual {v5, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    if-gtz v6, :cond_0

    :goto_0
    :try_start_1
    sget-object v10, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v10}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    int-to-long v10, v6

    :try_start_2
    const-string/jumbo v12, "quality_monitor"

    const-string/jumbo v13, "delete_old_events"

    invoke-static {v12, v13, v10, v11}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_3
    const-string/jumbo v10, "EventDAO"

    const-string/jumbo v11, "Error while deleting out-of-date data from DB"

    invoke-static {v10, v11, v7}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v10, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v10}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    :catchall_1
    move-exception v8

    :try_start_5
    sget-object v10, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v10}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public d()I
    .locals 10

    const/4 v5, 0x0

    sget-boolean v4, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()I

    move-result v4

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    iget-boolean v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_4

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    return v5

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v4}, Lcom/xiaomi/mistatistic/sdk/a;->a()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process getCount , result is:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_4
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "getEventCount"

    invoke-static {v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method

.method public e()I
    .locals 15

    const/4 v8, 0x0

    sget-object v9, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v9

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "mistat_event"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    if-nez v8, :cond_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    return v1

    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v10

    move v12, v10

    if-nez v8, :cond_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    monitor-exit v9

    return v12

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    :cond_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_5
    const-string/jumbo v1, "EventDAO"

    const-string/jumbo v2, "Error while getting count from DB"

    invoke-static {v1, v2, v11}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v8, :cond_4

    :goto_3
    :try_start_6
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v13

    if-nez v8, :cond_5

    :goto_4
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v13

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method public f()Z
    .locals 15

    sget-object v9, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v9

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v3, "anonymous=?"

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string/jumbo v7, "ts DESC"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v11

    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_3
    const-string/jumbo v1, "EventDAO"

    const-string/jumbo v2, "Error while isExistAnonymousData from DB"

    invoke-static {v1, v2, v12}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    :catchall_0
    move-exception v14

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    :catchall_1
    move-exception v13

    :try_start_5
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

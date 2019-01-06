.class final Lcom/android/server/power/PowerManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_NO_CACHED_WAKE_LOCKS:Z = true

.field private static final KEY_NO_CACHED_WAKE_LOCKS:Ljava/lang/String; = "no_cached_wake_locks"


# instance fields
.field public NO_CACHED_WAKE_LOCKS:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method

.method private updateConstants()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "power_manager_constants"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_15} :catch_23
    .catchall {:try_start_7 .. :try_end_15} :catchall_2e

    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "no_cached_wake_locks"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_2e

    monitor-exit v2

    return-void

    :catch_23
    move-exception v0

    :try_start_24
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v3, "Bad alarm manager settings"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_15

    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string/jumbo v0, "  Settings power_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "no_cached_wake_locks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    const-wide v2, 0x11100000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const-wide v4, 0x10d00000001L

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "power_manager_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    return-void
.end method
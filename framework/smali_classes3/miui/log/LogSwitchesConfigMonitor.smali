.class public final Lmiui/log/LogSwitchesConfigMonitor;
.super Ljava/lang/Object;
.source "LogSwitchesConfigMonitor.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LogSwitchesConfigMonitor"


# instance fields
.field private final applier:Lmiui/log/LogSwitchesConfigApplier;

.field private currentLogSwitchesConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation
.end field

.field private isWatchingSwitches:Z

.field private final logSwitchesFileName:Ljava/lang/String;

.field private final logSwitchesFilePath:Ljava/lang/String;

.field private final logSwitchesFolder:Ljava/lang/String;

.field private logSwitchsObserver:Landroid/os/FileObserver;


# direct methods
.method static synthetic -get0(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;
    .registers 2

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    return-object p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    iput-object p2, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    new-instance v0, Lmiui/log/LogSwitchesConfigApplier;

    invoke-direct {v0}, Lmiui/log/LogSwitchesConfigApplier;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    return-void
.end method

.method private getCurrentProgramName()Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v6, "/proc/self/cmdline"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_35
    .catchall {:try_start_1 .. :try_end_e} :catchall_5f

    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string/jumbo v5, ""
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1b} :catch_6b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_6e
    .catchall {:try_start_e .. :try_end_1b} :catchall_68

    if-eqz v4, :cond_20

    :try_start_1d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-object v5

    :catch_21
    move-exception v2

    goto :goto_20

    :cond_23
    :try_start_23
    const-string/jumbo v5, "\\u0000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_6b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_6e
    .catchall {:try_start_23 .. :try_end_2d} :catchall_68

    if-eqz v4, :cond_32

    :try_start_2f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-object v5

    :catch_33
    move-exception v2

    goto :goto_32

    :catch_35
    move-exception v2

    :goto_36
    :try_start_36
    const-string/jumbo v5, "LogSwitchesConfigMonitor"

    const-string/jumbo v6, "failed to read /proc/self/cmdline"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v5, ""
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_5f

    if-eqz v3, :cond_47

    :try_start_44
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-object v5

    :catch_48
    move-exception v2

    goto :goto_47

    :catch_4a
    move-exception v1

    :goto_4b
    :try_start_4b
    const-string/jumbo v5, "LogSwitchesConfigMonitor"

    const-string/jumbo v6, "cannot found /proc/self/cmdline"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v5, ""
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5f

    if-eqz v3, :cond_5c

    :try_start_59
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    return-object v5

    :catch_5d
    move-exception v2

    goto :goto_5c

    :catchall_5f
    move-exception v5

    :goto_60
    if-eqz v3, :cond_65

    :try_start_62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    :cond_65
    :goto_65
    throw v5

    :catch_66
    move-exception v2

    goto :goto_65

    :catchall_68
    move-exception v5

    move-object v3, v4

    goto :goto_60

    :catch_6b
    move-exception v1

    move-object v3, v4

    goto :goto_4b

    :catch_6e
    move-exception v2

    move-object v3, v4

    goto :goto_36
.end method


# virtual methods
.method public declared-synchronized isWatching()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retrieveCurrentLogSwitches()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    iget-object v4, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_10

    :catchall_28
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2b
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized startMonitoring(ZZ)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_49

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-eqz p1, :cond_10

    :try_start_9
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/log/Utils;->createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_1f

    new-instance v0, Lmiui/log/LogSwitchesConfigMonitor$1;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFolder:Ljava/lang/String;

    const/16 v2, 0x208

    invoke-direct {v0, p0, v1, v2}, Lmiui/log/LogSwitchesConfigMonitor$1;-><init>(Lmiui/log/LogSwitchesConfigMonitor;Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    :cond_1f
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z

    if-eqz p2, :cond_3b

    const-string/jumbo v0, "LogSwitchesConfigMonitor"

    const-string/jumbo v1, "Read log switches for config file synchronously"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_49

    :goto_39
    monitor-exit p0

    return-void

    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/log/LogSwitchesConfigMonitor$2;

    invoke-direct {v1, p0}, Lmiui/log/LogSwitchesConfigMonitor$2;-><init>(Lmiui/log/LogSwitchesConfigMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_49

    goto :goto_39

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_17

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->logSwitchsObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->isWatchingSwitches:Z
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePackageName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigApplier;->updatePackageName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/log/LogSwitchesConfigMonitor;->getCurrentProgramName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgramName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigApplier;->updateProgramName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

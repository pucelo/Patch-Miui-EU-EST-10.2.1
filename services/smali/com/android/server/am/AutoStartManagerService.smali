.class public Lcom/android/server/am/AutoStartManagerService;
.super Ljava/lang/Object;
.source "AutoStartManagerService.java"


# static fields
.field private static final ACCT_CGROUP_PATH:Ljava/lang/String; = "/acct"

.field private static final MEM_CGROUP_PATH:Ljava/lang/String; = "/dev/memcg/apps"

.field private static final MEM_CGROUP_TASKS:Ljava/lang/String; = "/dev/memcg/apps/tasks"

.field private static final TAG:Ljava/lang/String; = "AutoStartManagerService"

.field private static sCgroupRootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v2, 0x2718

    invoke-virtual {v1, v2, p1, p0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    const-string/jumbo v1, "AutoStartManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG- Reject RestartService packageName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private static getCgroupRootPath()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    return-object v0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_15

    invoke-static {}, Lcom/android/server/am/AutoStartManagerService;->isMemCgroupAvailable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    :cond_15
    const-string/jumbo v0, "/acct"

    sput-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    :goto_1a
    sget-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    return-object v0

    :cond_1d
    const-string/jumbo v0, "/dev/memcg/apps"

    sput-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    goto :goto_1a
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 10

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_15

    return v6

    :cond_15
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, p1, p2, v4}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v5

    return v5

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_2
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    if-nez v1, :cond_e

    return v11

    :cond_e
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2718

    invoke-virtual {v1, v8, p3, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f

    return v11

    :cond_1f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-interface {v7, p1, v8, v9, p2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_37

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_34
    if-nez v6, :cond_39

    return v11

    :cond_37
    const/4 v6, 0x0

    goto :goto_34

    :cond_39
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_50

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_51

    :cond_50
    return v11

    :cond_51
    monitor-enter v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_9e

    :try_start_52
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, p3, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-nez v4, :cond_93

    const-string/jumbo v7, "AutoStartManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MIUILOG- Reject service :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " userId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " uid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_52 .. :try_end_8e} :catchall_98

    :try_start_8e
    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_93
    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_97
    return v11

    :catchall_98
    move-exception v7

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9e} :catch_9e

    :catch_9e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97
.end method

.method private static isMemCgroupAvailable()Z
    .registers 4

    const/4 v3, 0x1

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/dev/memcg/apps/tasks"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    return v3

    :cond_10
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/dev/memcg/apps"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1f

    move-result v2

    if-eqz v2, :cond_23

    return v3

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    const/4 v2, 0x0

    return v2
.end method

.method static signalStopProcessLocked(II)V
    .registers 12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/AutoStartManagerService;->getCgroupRootPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/uid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/pid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/cgroup.procs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    :try_start_2f
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_86
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_76
    .catchall {:try_start_2f .. :try_end_3e} :catchall_7e

    const/4 v3, 0x0

    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_71

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3f

    const-string/jumbo v7, "AutoStartManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prepare force stop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x13

    invoke-static {v4, v7}, Landroid/os/Process;->sendSignal(II)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_6a} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6a} :catch_88
    .catchall {:try_start_3f .. :try_end_6a} :catchall_83

    goto :goto_3f

    :catch_6b
    move-exception v2

    move-object v5, v6

    :goto_6d
    invoke-static {v5}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_70
    return-void

    :cond_71
    invoke-static {v6}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v5, v6

    goto :goto_70

    :catch_76
    move-exception v0

    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7e

    invoke-static {v5}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_70

    :catchall_7e
    move-exception v7

    :goto_7f
    invoke-static {v5}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :catchall_83
    move-exception v7

    move-object v5, v6

    goto :goto_7f

    :catch_86
    move-exception v2

    goto :goto_6d

    :catch_88
    move-exception v0

    move-object v5, v6

    goto :goto_77
.end method

.method public static signalStopProcessesLocked(Ljava/util/ArrayList;ZLjava/lang/String;ILcom/android/server/am/ActivityManagerService;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;Z",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/am/ActivityManagerService;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_9

    invoke-static {p2, p3, p4}, Lcom/android/server/am/AutoStartManagerService;->canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_21

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/am/AutoStartManagerService;->signalStopProcessLocked(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    return-void
.end method

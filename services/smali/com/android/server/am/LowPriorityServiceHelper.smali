.class Lcom/android/server/am/LowPriorityServiceHelper;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# static fields
.field static final DEBUG_DELAYED_STARTS:Z = false

.field static final DEFAULT_NO_PROC_DELAY_TIME:J = 0x12cL

.field static final LOW_PRIORITY_DELAY:J = 0x96L

.field static final MAX_DELAY_TIME:J = 0x3e8L

.field static final MAX_TIME_OUT:J = 0x5dcL

.field static final MIN_DELAY_TIME:J = 0x0L

.field static final MSG_BG_RESTART_LOW_PRIORITY:I = 0x66

.field static final MSG_BG_START_LOW_PRIORITY:I = 0x65

.field private static final PACKAGE_NAME_ALL:Ljava/lang/String; = "*"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field static final SHORT_DELAY:J = 0x5L

.field static final mInstance:Lcom/android/server/am/LowPriorityServiceHelper;


# instance fields
.field private final MAX_SIZE:I

.field private canOpen:Z

.field private closeCheck:Z

.field private fLowPriorityDelay:Ljava/lang/reflect/Field;

.field private fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

.field private lastLowPriorityEnforcedTime:J

.field private final mBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/LowPriorityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field noProcDelayTime:J

.field private sendNoDelayEnforcedMsg:Z

.field private startEnforcedLowPriorityService:Z

.field private unCheckPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-direct {v0}, Lcom/android/server/am/LowPriorityServiceHelper;-><init>()V

    sput-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->MAX_SIZE:I

    iput-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    iput-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    :try_start_31
    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string/jumbo v2, "lowPriorityDelay"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string/jumbo v2, "lowPriorityDelayRestart"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_47} :catch_52

    :goto_47
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    if-nez v1, :cond_51

    :cond_4f
    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    :cond_51
    return-void

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method private countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V
    .registers 10

    if-nez p2, :cond_7

    const-wide/16 v0, 0x96

    :goto_4
    iput-wide v0, p3, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    return-void

    :cond_7
    iget-wide v2, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    const-wide/16 v0, 0x96

    goto :goto_4

    :cond_12
    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_4
.end method

.method private dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V
    .registers 5

    const-string/jumbo v0, "#SP : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " pkgName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " sName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " prio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " cPrio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " inBlist="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " dTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    goto :goto_5
.end method

.method private setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    goto :goto_5
.end method


# virtual methods
.method public callerIsTopApp(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 8

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v1, :cond_6

    return v4

    :cond_6
    if-eqz p2, :cond_31

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_70

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v1, v2, :cond_70

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_70

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    return v4

    :cond_31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_3a

    return v4

    :cond_3a
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string/jumbo v1, "ActiveServicesInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UnCheckPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_70
    const/4 v1, 0x0

    return v1
.end method

.method public closeCheckPriority()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 12

    const-string/jumbo v7, "  MIUI ADD :  LPSH dump start : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v7, "  LowPriorityList services : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_d
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_63

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/LowPriorityServiceInfo;

    const-string/jumbo v7, "#LPSInfo : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v7, " isRestart : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v2, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v7, " delay : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v7, " pendingStarts.size : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const-string/jumbo v8, "    "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_63
    const-string/jumbo v7, "  Blacklist : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/MiuiServicePriority;

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    goto :goto_73

    :cond_8b
    const-string/jumbo v7, "  Whitelist : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/MiuiServicePriority;

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    goto :goto_9b

    :cond_b3
    const-string/jumbo v7, "  LPSH dump END !!!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceRemoveServiceLocked(Lcom/android/server/am/ServiceRecord;)Z
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2c

    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/LowPriorityServiceInfo;

    iget-object v2, v2, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ServiceRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_a

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2c
    return v1
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;IZ)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 20

    iget-boolean v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    return v10

    :cond_6
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x2710

    if-ge v10, v11, :cond_16

    const/4 v10, 0x0

    return v10

    :cond_16
    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v10

    if-eqz v10, :cond_9e

    const/4 v2, 0x1

    :cond_1f
    :goto_1f
    if-eqz v2, :cond_15d

    new-instance v4, Lcom/android/server/am/LowPriorityServiceInfo;

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-direct {v4, v0, v1}, Lcom/android/server/am/LowPriorityServiceInfo;-><init>(Lcom/android/server/am/ServiceRecord;Z)V

    invoke-direct {p0, p1, v8, v4}, Lcom/android/server/am/LowPriorityServiceHelper;->countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V

    if-eqz p5, :cond_32

    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    :cond_32
    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    iget-boolean v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    if-nez v10, :cond_64

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/LowPriorityServiceInfo;

    iget-boolean v10, v3, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v10, :cond_145

    const/16 v10, 0x66

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    :goto_61
    invoke-virtual {p1, v5}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    :cond_64
    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-boolean v10, v4, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v10, :cond_14d

    const/16 v10, 0x66

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    :goto_7b
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_89

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v10, :cond_93

    :cond_89
    iget-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    const-wide/16 v12, 0x96

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x12c

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    :cond_93
    iget-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v10, v6, v10

    if-ltz v10, :cond_155

    invoke-virtual {p1, v5}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    :cond_9c
    :goto_9c
    const/4 v10, 0x1

    return v10

    :cond_9e
    if-eqz p4, :cond_f4

    iget-object v9, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "*/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-eqz v8, :cond_c7

    const/4 v2, 0x1

    goto/16 :goto_1f

    :cond_c7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-eqz v8, :cond_1f

    const/4 v2, 0x1

    goto/16 :goto_1f

    :cond_f4
    iget-object v9, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-nez v8, :cond_1f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "*/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-nez v8, :cond_1f

    const/4 v2, 0x1

    goto/16 :goto_1f

    :cond_145
    const/16 v10, 0x65

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    goto/16 :goto_61

    :cond_14d
    const/16 v10, 0x65

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    goto/16 :goto_7b

    :cond_155
    iget-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long/2addr v10, v6

    invoke-virtual {p1, v5, v10, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9c

    :cond_15d
    const/4 v10, 0x0

    return v10
.end method

.method public removeService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 6

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v2, :cond_6

    return v3

    :cond_6
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    return v3

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/LowPriorityServiceInfo;

    iget-object v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ServiceRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-boolean v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v2, :cond_30

    iget-boolean v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    if-eqz v2, :cond_35

    :cond_30
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_35
    const/4 v2, 0x1

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3a
    return v3
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 10

    iget-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    if-eqz v5, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_3b

    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    :goto_9
    iget-object v5, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    if-nez v5, :cond_3e

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiServicePriority;

    iget-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_3b
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    goto :goto_9

    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rescheduleDelayedList(JLcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .registers 16

    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    if-nez v0, :cond_bc

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    :goto_c
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b9

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b9

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/LowPriorityServiceInfo;

    const/4 v8, 0x0

    iget-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-nez v0, :cond_39

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_c

    :cond_39
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/LowPriorityServiceInfo;

    :cond_4a
    if-eqz v8, :cond_e4

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_de

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    iget-object v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_67

    iget-object v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_d8

    :cond_67
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    :goto_6c
    iget-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v0, :cond_ef

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    :try_start_73
    const-string/jumbo v0, "ActiveServicesInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RESTART Low priority start of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a2} :catch_ea

    :goto_a2
    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    if-eqz v8, :cond_b4

    iget-boolean v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v0, :cond_13f

    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    :cond_b4
    :goto_b4
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    invoke-virtual {p4, v7, v0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_b9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    :cond_bc
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_d7

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d7

    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    :cond_d7
    return-void

    :cond_d8
    iget-wide v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_6c

    :cond_de
    const-wide/16 v0, 0x5

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_6c

    :cond_e4
    const-wide/16 v0, 0x96

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_6c

    :catch_ea
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a2

    :cond_ef
    :try_start_ef
    const-string/jumbo v0, "ActiveServicesInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Low priority start of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget-object v3, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_12e

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_13d

    :cond_12e
    const/4 v5, 0x1

    :goto_12f
    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_135} :catch_137

    goto/16 :goto_a2

    :catch_137
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a2

    :cond_13d
    const/4 v5, 0x0

    goto :goto_12f

    :cond_13f
    const/16 v0, 0x65

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    goto/16 :goto_b4
.end method

.method public setNoProcDelayTime(J)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    iput-wide p1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    :goto_13
    return-void

    :cond_14
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    goto :goto_13
.end method

.method public setServicePriority(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    iget-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v5, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MiuiServicePriority;

    iget-boolean v5, v1, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    if-eqz v5, :cond_64

    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    :goto_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiServicePriority;

    if-eqz v3, :cond_6c

    iget-object v5, v1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    iput v5, v3, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    iget-boolean v5, v1, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    iput-boolean v5, v3, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    iget-wide v6, v1, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_67

    iget-wide v6, v1, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_67

    iget-wide v6, v1, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    iput-wide v6, v3, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_9

    :cond_64
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    goto :goto_1b

    :cond_67
    const-wide/16 v6, 0x96

    iput-wide v6, v3, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_9

    :cond_6c
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_70
    iget-object v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    const-string/jumbo v6, "com.cttl.testService"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    return-void
.end method

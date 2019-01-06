.class public final Lmiui/log/LogSwitchesConfigApplier;
.super Ljava/lang/Object;
.source "LogSwitchesConfigApplier.java"


# instance fields
.field private final logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private programName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigApplier;->packageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigApplier;->programName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    return-void
.end method

.method private applyLogSwitch(Lmiui/log/LogSwitch;)V
    .registers 3

    iget-boolean v0, p1, Lmiui/log/LogSwitch;->isOn:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOn(Lmiui/log/LogSwitch;)V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOff(Lmiui/log/LogSwitch;)V

    goto :goto_7
.end method

.method private applyLogSwitchesOfCurrentApp(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v7, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/LogSwitch;

    if-nez v0, :cond_30

    invoke-direct {p0, v2}, Lmiui/log/LogSwitchesConfigApplier;->applyLogSwitch(Lmiui/log/LogSwitch;)V

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v7, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_30
    iget-boolean v6, v0, Lmiui/log/LogSwitch;->isOn:Z

    iget-boolean v7, v2, Lmiui/log/LogSwitch;->isOn:Z

    if-eq v6, v7, :cond_d

    invoke-direct {p0, v0}, Lmiui/log/LogSwitchesConfigApplier;->revertLogSwitch(Lmiui/log/LogSwitch;)V

    invoke-direct {p0, v2}, Lmiui/log/LogSwitchesConfigApplier;->applyLogSwitch(Lmiui/log/LogSwitch;)V

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v7, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v7, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_4b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5a
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/LogSwitch;

    iget-object v6, v0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_72
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    invoke-direct {p0, v2}, Lmiui/log/LogSwitchesConfigApplier;->revertLogSwitch(Lmiui/log/LogSwitch;)V

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    iget-object v7, v2, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    :cond_8d
    return-void
.end method

.method private checkTargetApp(Lmiui/log/AppLogSwitches;)Z
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p1, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p1, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p1, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigApplier;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v2

    :cond_19
    iget-object v0, p1, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    iget-object v1, p0, Lmiui/log/LogSwitchesConfigApplier;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return v2

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized clearAllOnLogs()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/LogSwitch;

    invoke-direct {p0, v0}, Lmiui/log/LogSwitchesConfigApplier;->revertLogSwitch(Lmiui/log/LogSwitch;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lmiui/log/LogSwitchesConfigApplier;->logSwitchesConfigOfCurrentApp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    monitor-exit p0

    return-void
.end method

.method private revertLogSwitch(Lmiui/log/LogSwitch;)V
    .registers 3

    iget-boolean v0, p1, Lmiui/log/LogSwitch;->isOn:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOff(Lmiui/log/LogSwitch;)V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigApplier;->switchOn(Lmiui/log/LogSwitch;)V

    goto :goto_7
.end method

.method private switchOff(Lmiui/log/LogSwitch;)V
    .registers 3

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOffTagGroup(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOffMiuiTag(Ljava/lang/String;)V

    goto :goto_15

    :cond_2c
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOffAndroidTag(Ljava/lang/String;)V

    goto :goto_15
.end method

.method private switchOn(Lmiui/log/LogSwitch;)V
    .registers 3

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOnTagGroup(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOnMiuiTag(Ljava/lang/String;)V

    goto :goto_15

    :cond_2c
    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/Tags;->switchOnAndroidTag(Ljava/lang/String;)V

    goto :goto_15
.end method


# virtual methods
.method public declared-synchronized apply(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lmiui/log/LogSwitchesConfigParser;->parseLogSwitchesConfig(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_12

    :cond_d
    invoke-direct {p0}, Lmiui/log/LogSwitchesConfigApplier;->clearAllOnLogs()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    :goto_10
    monitor-exit p0

    return-object v0

    :cond_12
    :try_start_12
    invoke-virtual {p0, v0}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/util/HashMap;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_10

    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized apply(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    iget-boolean v4, v0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v4, :cond_f

    move-object v3, v0

    :cond_20
    if-eqz v3, :cond_27

    iget-object v4, v3, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_27
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    iget-boolean v4, v0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-nez v4, :cond_2f

    invoke-direct {p0, v0}, Lmiui/log/LogSwitchesConfigApplier;->checkTargetApp(Lmiui/log/AppLogSwitches;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4b

    goto :goto_2f

    :catchall_4b
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_59

    invoke-direct {p0}, Lmiui/log/LogSwitchesConfigApplier;->clearAllOnLogs()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_4b

    :goto_57
    monitor-exit p0

    return-void

    :cond_59
    :try_start_59
    invoke-direct {p0, v2}, Lmiui/log/LogSwitchesConfigApplier;->applyLogSwitchesOfCurrentApp(Ljava/util/HashMap;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_4b

    goto :goto_57
.end method

.method public updatePackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigApplier;->packageName:Ljava/lang/String;

    return-void
.end method

.method public updateProgramName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigApplier;->programName:Ljava/lang/String;

    return-void
.end method

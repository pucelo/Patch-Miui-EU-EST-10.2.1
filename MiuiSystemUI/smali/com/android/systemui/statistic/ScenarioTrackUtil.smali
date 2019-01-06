.class public Lcom/android/systemui/statistic/ScenarioTrackUtil;
.super Ljava/lang/Object;
.source "ScenarioTrackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sScenarioSettings:Landroid/os/statistics/E2EScenarioSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/systemui/statistic/ScenarioTrackUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/statistics/E2EScenarioSettings;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioSettings;-><init>()V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioTrackUtil;->sScenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    sget-object v0, Lcom/android/systemui/statistic/ScenarioTrackUtil;->sScenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/statistics/E2EScenarioSettings;->setStatisticsMode(I)V

    sget-object v0, Lcom/android/systemui/statistic/ScenarioTrackUtil;->sScenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/statistics/E2EScenarioSettings;->setHistoryLimitPerDay(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;Ljava/util/Map;)V

    return-void
.end method

.method public static beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;Ljava/util/Map;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mE2eScenario:Landroid/os/statistics/E2EScenario;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " event start cancel due to scenario is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->isTrackStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mE2eScenario:Landroid/os/statistics/E2EScenario;

    invoke-static {v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/statistics/E2EScenario;)V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/statistics/E2EScenarioPayload;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioPayload;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/statistics/E2EScenarioPayload;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mE2eScenario:Landroid/os/statistics/E2EScenario;

    sget-object v2, Lcom/android/systemui/statistic/ScenarioTrackUtil;->sScenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    invoke-static {v1, v2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Landroid/os/statistics/E2EScenarioPayload;)V

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->isTrackStarted:Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mE2eScenario:Landroid/os/statistics/E2EScenario;

    sget-object v2, Lcom/android/systemui/statistic/ScenarioTrackUtil;->sScenarioSettings:Landroid/os/statistics/E2EScenarioSettings;

    invoke-static {v1, v2}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;)V

    goto :goto_0
.end method

.method public static finishScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mE2eScenario:Landroid/os/statistics/E2EScenario;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " event end cancel, due to scenario is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->isTrackStarted:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statistic/ScenarioTrackUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " event end cancel, due to scenario has not started!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mE2eScenario:Landroid/os/statistics/E2EScenario;

    invoke-static {v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->isTrackStarted:Z

    return-void
.end method

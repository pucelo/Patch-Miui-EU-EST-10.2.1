.class public Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E2EScenarioSettings"
.end annotation


# instance fields
.field private final scenarioSettings:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enableAutoAnalysis(II)V
    .registers 9

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get2()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_20

    :try_start_6
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get2()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public setHistoryLimitPerDay(I)V
    .registers 8

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get3()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_19

    :try_start_6
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get3()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public setStatisticsMode(I)V
    .registers 8

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get4()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_19

    :try_start_6
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get4()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->scenarioSettings:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

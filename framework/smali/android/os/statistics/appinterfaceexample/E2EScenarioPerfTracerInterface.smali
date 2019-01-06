.class Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;,
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;,
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    }
.end annotation


# static fields
.field public static final STATISTICS_MODE_AVERAGE:I = 0x1

.field public static final STATISTICS_MODE_DISTRIBUTION:I = 0x4

.field public static final STATISTICS_MODE_HISTORY:I = 0x2

.field public static final STATISTICS_MODE_NONE:I

.field private static volatile sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

.field private static volatile sAbortSpecificScenario:Ljava/lang/reflect/Method;

.field private static volatile sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioPerfTracerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

.field private static volatile sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

.field private static final sInitLockObject:Ljava/lang/Object;

.field private static volatile sInitialized:Z


# direct methods
.method static synthetic -get0()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortScenario(Landroid/os/Bundle;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_a

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_a
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1a

    :try_start_e
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public static abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V
    .registers 2

    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V

    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_a

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_a
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_21

    :try_start_e
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)V
    .registers 4

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 4

    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 10

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-void

    :cond_6
    sget-boolean v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v2, :cond_d

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_d
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3b

    :try_start_11
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    if-nez p3, :cond_31

    :goto_29
    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    :goto_30
    return-void

    :cond_31
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_36

    move-result-object v1

    goto :goto_29

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :cond_3b
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_30

    :try_start_3f
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    if-nez p3, :cond_64

    :goto_57
    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5e} :catch_5f

    goto :goto_30

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :cond_64
    :try_start_64
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_5f

    move-result-object v1

    goto :goto_57
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Landroid/os/Bundle;
    .registers 4

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 4

    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 10

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-object v2

    :cond_6
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_d

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_d
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3e

    :try_start_11
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p2, v4, v1

    if-nez p3, :cond_35

    move-object v1, v2

    :goto_2a
    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    return-object v1

    :cond_35
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_3a

    move-result-object v1

    goto :goto_2a

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    return-object v2
.end method

.method public static createE2EScenario(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .registers 9

    const/4 v2, 0x0

    sget-boolean v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v3, :cond_8

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_8
    const/4 v1, 0x0

    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1f

    :try_start_d
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_22

    move-result-object v1

    :cond_1f
    :goto_1f
    if-nez v1, :cond_27

    :goto_21
    return-object v2

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    :cond_27
    new-instance v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;

    invoke-direct {v3, v1, v2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V

    move-object v2, v3

    goto :goto_21
.end method

.method public static createE2EScenarioPayload()Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;
    .registers 5

    const/4 v2, 0x0

    sget-boolean v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v3, :cond_8

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_8
    const/4 v1, 0x0

    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_16

    :try_start_d
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_19

    move-result-object v1

    :cond_16
    :goto_16
    if-nez v1, :cond_1e

    :goto_18
    return-object v2

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :cond_1e
    new-instance v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    invoke-direct {v3, v1, v2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    move-object v2, v3

    goto :goto_18
.end method

.method public static createE2EScenarioSettings()Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .registers 5

    const/4 v2, 0x0

    sget-boolean v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v3, :cond_8

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_8
    const/4 v1, 0x0

    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_16

    :try_start_d
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_19

    move-result-object v1

    :cond_16
    :goto_16
    if-nez v1, :cond_1e

    :goto_18
    return-object v2

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :cond_1e
    new-instance v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;

    invoke-direct {v3, v1, v2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)V

    move-object v2, v3

    goto :goto_18
.end method

.method public static finishScenario(Landroid/os/Bundle;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/Bundle;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/Bundle;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 7

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    sget-boolean v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v2, :cond_b

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_b
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_20

    :try_start_f
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    if-nez p1, :cond_21

    :goto_19
    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_26

    move-result-object v1

    goto :goto_19

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V
    .registers 3

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 3

    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .registers 9

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    sget-boolean v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v2, :cond_b

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_b
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_27

    :try_start_f
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    if-nez p2, :cond_28

    :goto_20
    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-static {p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    move-result-object v1

    goto :goto_20

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public static init()V
    .registers 7

    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_16b

    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitLockObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_16c

    if-nez v1, :cond_16a

    :try_start_b
    const-string/jumbo v1, "android.os.statistics.E2EScenario"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_179
    .catchall {:try_start_b .. :try_end_2e} :catchall_16c

    :goto_2e
    :try_start_2e
    const-string/jumbo v1, "android.os.statistics.E2EScenarioSettings"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const-string/jumbo v3, "setStatisticsMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const-string/jumbo v3, "setHistoryLimitPerDay"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const-string/jumbo v3, "enableAutoAnalysis"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_80} :catch_176
    .catchall {:try_start_2e .. :try_end_80} :catchall_16c

    :goto_80
    :try_start_80
    const-string/jumbo v1, "android.os.statistics.E2EScenarioPayload"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const-string/jumbo v3, "putValues"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const-string/jumbo v3, "putAll"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_ba} :catch_173
    .catchall {:try_start_80 .. :try_end_ba} :catchall_16c

    :goto_ba
    :try_start_ba
    const-string/jumbo v1, "android.os.statistics.E2EScenarioPerfTracer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string/jumbo v3, "beginScenario"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_e5} :catch_16f
    .catchall {:try_start_ba .. :try_end_e5} :catchall_16c

    :try_start_e5
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string/jumbo v3, "asyncBeginScenario"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_107} :catch_171
    .catchall {:try_start_e5 .. :try_end_107} :catchall_16c

    :goto_107
    :try_start_107
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string/jumbo v3, "abortScenario"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string/jumbo v3, "abortScenario"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string/jumbo v3, "finishScenario"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    const-string/jumbo v3, "finishScenario"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_167} :catch_16f
    .catchall {:try_start_107 .. :try_end_167} :catchall_16c

    :goto_167
    const/4 v1, 0x1

    :try_start_168
    sput-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z
    :try_end_16a
    .catchall {:try_start_168 .. :try_end_16a} :catchall_16c

    :cond_16a
    monitor-exit v2

    :cond_16b
    return-void

    :catchall_16c
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_16f
    move-exception v0

    goto :goto_167

    :catch_171
    move-exception v0

    goto :goto_107

    :catch_173
    move-exception v0

    goto/16 :goto_ba

    :catch_176
    move-exception v0

    goto/16 :goto_80

    :catch_179
    move-exception v0

    goto/16 :goto_2e
.end method

.method public static isUsable()Z
    .registers 1

    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    :cond_7
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

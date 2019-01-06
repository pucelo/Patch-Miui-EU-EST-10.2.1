.class public Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;
.super Ljava/lang/Object;
.source "ScenarioTrackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statistic/ScenarioTrackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemUIEventScenario"
.end annotation


# instance fields
.field public volatile isTrackStarted:Z

.field mE2eScenario:Landroid/os/statistics/E2EScenario;

.field mEventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->isTrackStarted:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->initE2EScenario(Ljava/lang/String;)Landroid/os/statistics/E2EScenario;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mE2eScenario:Landroid/os/statistics/E2EScenario;

    iput-object p1, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mEventName:Ljava/lang/String;

    return-void
.end method

.method private initE2EScenario(Ljava/lang/String;)Landroid/os/statistics/E2EScenario;
    .locals 3

    new-instance v0, Landroid/os/statistics/E2EScenario;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "Performance"

    invoke-direct {v0, v1, v2, p1}, Landroid/os/statistics/E2EScenario;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;->mEventName:Ljava/lang/String;

    return-object v0
.end method

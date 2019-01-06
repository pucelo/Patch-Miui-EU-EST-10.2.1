.class public Lcom/android/systemui/statistic/ScenarioConstants;
.super Ljava/lang/Object;
.source "ScenarioConstants.java"


# static fields
.field public static final SCENARIO_CLEAR_ALL_NOTI:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_CLEAR_NOTI:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_CLOSE_FOLD:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_EXPAND_VOLUME_DIALOG:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_OPEN_FOLD:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_STATUS_BAR_HIDE:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_STATUS_BAR_SHOW:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_VOLUME_DIALOG_HIDE:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

.field public static final SCENARIO_VOLUME_DIALOG_SHOW:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "statusBarShow"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_STATUS_BAR_SHOW:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "statusBarHide"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_STATUS_BAR_HIDE:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "clearAllNotification"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_CLEAR_ALL_NOTI:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "clearNotification"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_CLEAR_NOTI:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "openFold"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_OPEN_FOLD:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "closeFold"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_CLOSE_FOLD:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "volumeDialogShow"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_VOLUME_DIALOG_SHOW:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "volumeDialogHide"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_VOLUME_DIALOG_HIDE:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    new-instance v0, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    const-string/jumbo v1, "expandVolumeDialog"

    invoke-direct {v0, v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_EXPAND_VOLUME_DIALOG:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

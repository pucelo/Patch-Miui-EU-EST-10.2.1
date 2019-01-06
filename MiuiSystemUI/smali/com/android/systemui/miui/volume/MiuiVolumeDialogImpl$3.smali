.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_EXPAND_VOLUME_DIALOG:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v1}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    const-string/jumbo v1, "systemui_volume_dialog"

    const-string/jumbo v2, "volume_click_more"

    invoke-static {v1, v2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1, v0, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;ZZ)V

    return-void
.end method

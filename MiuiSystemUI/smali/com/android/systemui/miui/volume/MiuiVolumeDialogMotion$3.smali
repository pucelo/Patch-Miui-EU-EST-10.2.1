.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-wrap3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;F)V

    sget-object v0, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_VOLUME_DIALOG_SHOW:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v0}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->finishScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    return-void
.end method

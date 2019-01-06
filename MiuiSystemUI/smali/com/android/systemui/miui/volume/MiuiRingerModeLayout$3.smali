.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get1(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get3(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "RingerModeLayout"

    const-string/jumbo v1, "setSilenceMode mTransitionRunning is true."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get1(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "systemui_volume_dialog"

    const-string/jumbo v2, "volume_click_dnd_at_secondary_page"

    invoke-static {v1, v2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get2(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-static {v1, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-wrap2(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;I)V

    return-void
.end method

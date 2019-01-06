.class Lcom/android/systemui/BatteryMeterView$2;
.super Landroid/os/AsyncTask;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterView;->notifyChargingStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;

.field final synthetic val$charging:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView$2;->val$charging:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->-get0(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/ChargingUtils;->isQuickCharging(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$2;->val$charging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/BatteryMeterView;->updateQuickChargingDelayed(J)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/BatteryMeterView;->updateQuickChargingDelayed(J)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/BatteryMeterView;->updateQuickChargingDelayed(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateQuickCharging(Z)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->-get1(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

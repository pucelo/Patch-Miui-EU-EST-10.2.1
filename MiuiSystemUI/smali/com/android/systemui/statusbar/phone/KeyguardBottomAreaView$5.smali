.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v6, "is_pad"

    invoke-static {v6, v8}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v1

    :goto_1
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v5, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->voltage:I

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->temperature:I

    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v6

    invoke-virtual {v6, v0, v8}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingLevel(IZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get16(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v6

    if-eq v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setChargingInfo(Ljava/lang/String;II)V

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get13(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v6

    if-ne v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v6

    if-eq v0, v6, :cond_7

    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6, v3, v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;ZII)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-set2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;I)I

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get10(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v6

    if-eq v2, v6, :cond_3

    goto :goto_2
.end method

.method public onRegionChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get12(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->initLeftView()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap8(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get12(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->initLeftView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get12(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->uploadData()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-set5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap8(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

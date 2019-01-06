.class Lcom/android/keyguard/CarrierText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v3}, Lcom/android/keyguard/CarrierText;->-get0(Lcom/android/keyguard/CarrierText;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/keyguard/CarrierText;->-set0(Lcom/android/keyguard/CarrierText;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const-string/jumbo v0, "CarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChanged() - slotId invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v0, p3}, Lcom/android/keyguard/CarrierText;->-wrap0(Lcom/android/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v0}, Lcom/android/keyguard/CarrierText;->-get8(Lcom/android/keyguard/CarrierText;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v0}, Lcom/android/keyguard/CarrierText;->-get8(Lcom/android/keyguard/CarrierText;)[Z

    move-result-object v0

    aput-boolean v1, v0, p2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    goto :goto_0
.end method

.method public onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText$1;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    return-void
.end method

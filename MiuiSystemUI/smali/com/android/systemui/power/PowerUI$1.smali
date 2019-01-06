.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "level"

    const/16 v14, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set0(Lcom/android/systemui/power/PowerUI;I)I

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "status"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set1(Lcom/android/systemui/power/PowerUI;I)I

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "plugged"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set3(Lcom/android/systemui/power/PowerUI;I)I

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v7

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "invalid_charger"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set2(Lcom/android/systemui/power/PowerUI;I)I

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x1

    :goto_0
    if-eqz v8, :cond_1

    const/4 v9, 0x1

    :goto_1
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12, v4}, Lcom/android/systemui/power/PowerUI;->-wrap2(Lcom/android/systemui/power/PowerUI;I)I

    move-result v6

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-wrap2(Lcom/android/systemui/power/PowerUI;I)I

    move-result v2

    const-string/jumbo v12, "temperature"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v12, v12, Lcom/android/systemui/power/PowerUI;->mNeedShowLowTemperatureDialog:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mLowTemperatureDialog:Landroid/app/AlertDialog;

    if-nez v12, :cond_2

    const/16 v12, -0x50

    if-gt v11, v12, :cond_2

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    const/16 v13, 0x32

    if-gt v12, v13, :cond_2

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showLowTemperatureDialog()V

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/systemui/power/PowerUI;->mNeedShowLowTemperatureDialog:Z

    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    if-ltz v11, :cond_4

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/systemui/power/PowerUI;->mNeedShowLowTemperatureDialog:Z

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->dismissLowTemperatureDialog()V

    :cond_3
    if-nez v7, :cond_5

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "PowerUI"

    const-string/jumbo v13, "showing invalid charger warning"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    return-void

    :cond_4
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mLowTemperatureDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_3

    return-void

    :cond_5
    if-eqz v7, :cond_d

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-nez v12, :cond_d

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    :cond_6
    const/4 v3, 0x1

    if-nez v10, :cond_e

    if-lt v2, v6, :cond_7

    if-eqz v9, :cond_e

    :cond_7
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_e

    if-gez v2, :cond_e

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-wrap9(Lcom/android/systemui/power/PowerUI;)V

    if-ne v2, v6, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x0

    :cond_9
    :goto_2
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-eq v12, v8, :cond_a

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get4(Lcom/android/systemui/power/PowerUI;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    :cond_a
    move-object/from16 v12, p0

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->shouldPlayChargingSounds()Z

    move-result v12

    if-nez v12, :cond_b

    return-void

    :cond_b
    if-eqz v10, :cond_11

    xor-int/lit8 v12, v9, 0x1

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    :goto_3
    return-void

    :cond_d
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_6

    return-void

    :cond_e
    if-nez v10, :cond_f

    if-le v2, v6, :cond_10

    if-lez v2, :cond_10

    :cond_f
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-wrap4(Lcom/android/systemui/power/PowerUI;)V

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-wrap5(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_2

    :cond_10
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto :goto_2

    :cond_11
    if-eqz v3, :cond_c

    xor-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_c

    if-eqz v9, :cond_c

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_12
    const-string/jumbo v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

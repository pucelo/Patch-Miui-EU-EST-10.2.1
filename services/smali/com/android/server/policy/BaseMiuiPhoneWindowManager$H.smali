.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;
.super Landroid/os/Handler;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field static final MSG_KEY_FUNCTION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    const/4 v12, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v8

    if-eqz v8, :cond_b

    return-void

    :cond_b
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "shortcut"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string/jumbo v1, "virtual_key_longpress"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    const-string/jumbo v8, "launch_camera"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    move-result v7

    :cond_41
    :goto_41
    if-eqz v7, :cond_51

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v8

    invoke-virtual {v8, v1, v12}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    :cond_51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_55
    const-string/jumbo v8, "screen_shot"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "screenshot"

    const-string/jumbo v10, "key_shortcut"

    invoke-static {v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_41

    :cond_87
    const-string/jumbo v8, "launch_voice_assistant"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v1, "screen_button_voice_assist"

    goto :goto_41

    :cond_9a
    const-string/jumbo v8, "launch_google_search"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v1, "screen_button_voice_assist"

    goto :goto_41

    :cond_ad
    const-string/jumbo v8, "go_to_sleep"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 v7, 0x1

    goto/16 :goto_41

    :cond_c4
    const-string/jumbo v8, "turn_on_torch"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fc

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get15(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v8

    if-nez v8, :cond_f6

    if-eqz v6, :cond_fa

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v8

    if-nez v8, :cond_f8

    const/4 v4, 0x1

    :goto_e4
    if-eqz v4, :cond_41

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v7

    goto/16 :goto_41

    :cond_f6
    const/4 v4, 0x1

    goto :goto_e4

    :cond_f8
    const/4 v4, 0x0

    goto :goto_e4

    :cond_fa
    const/4 v4, 0x0

    goto :goto_e4

    :cond_fc
    const-string/jumbo v8, "close_app"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_118

    const-string/jumbo v8, "close_app"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v7

    goto/16 :goto_41

    :cond_118
    const-string/jumbo v8, "show_menu"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_129

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v7

    goto/16 :goto_41

    :cond_129
    const-string/jumbo v8, "mi_pay"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_149

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v8, "event_source"

    const-string/jumbo v9, "double_click_power"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    move-result v7

    goto/16 :goto_41

    :cond_149
    const-string/jumbo v8, "launch_recents"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15f

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v7

    goto/16 :goto_41

    :cond_15f
    const-string/jumbo v8, "split_screen"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_170

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->toggleSplitScreenInternal()V

    const/4 v7, 0x1

    goto/16 :goto_41

    :cond_170
    const-string/jumbo v8, "close_talkback"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get13(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get14(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    const-string/jumbo v8, "combine volume key"

    const-string/jumbo v9, "talkback is closed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41
.end method

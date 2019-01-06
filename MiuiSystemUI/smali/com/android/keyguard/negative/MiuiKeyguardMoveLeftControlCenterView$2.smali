.class Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;
.super Ljava/lang/Object;
.source "MiuiKeyguardMoveLeftControlCenterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "com.android.contacts"

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-static {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-get0(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-static {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-get1(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.android.calendar"

    goto :goto_1

    :sswitch_2
    const-string v1, "com.miui.calculator"

    goto :goto_1

    :sswitch_3
    const-string v1, "com.miui.notes"

    goto :goto_1

    :sswitch_4
    const-string v1, "com.miui.player"

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-static {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-get0(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "miui.intent.extra.IS_ENABLE"

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-static {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-get0(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    invoke-static {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-get2(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f0a014f -> :sswitch_5
        0x7f0a0352 -> :sswitch_0
        0x7f0a0353 -> :sswitch_1
        0x7f0a0354 -> :sswitch_2
        0x7f0a0355 -> :sswitch_3
        0x7f0a0356 -> :sswitch_4
    .end sparse-switch
.end method

.class Lcom/android/keyguard/smartcover/SmartCoverHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartCoverHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/SmartCoverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/smartcover/SmartCoverHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "miui.intent.action.SMART_COVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "persist.sys.smartcover_mode"

    const/4 v5, -0x1

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "is_smart_cover_open"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    iget-object v5, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set4(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set3(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2, v1}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-wrap1(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2, v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set2(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-virtual {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->refreshSmartCover()V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2, v1}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-wrap0(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setHideLockForLid(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSimLockedOrMissing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setHideLockForLid(Z)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setHideLockForLid(Z)V

    goto :goto_2
.end method

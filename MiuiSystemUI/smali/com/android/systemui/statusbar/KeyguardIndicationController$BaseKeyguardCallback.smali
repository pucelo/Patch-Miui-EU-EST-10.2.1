.class public Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseKeyguardCallback"
.end annotation


# instance fields
.field private final FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

.field private mFingerprintAuthUserId:I

.field private mFingerprintErrorMsgId:I

.field private mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field private mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

    return-void
.end method

.method private handleEnterArrowAnimation()V
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x40000000    # 2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleFaceUnlockFailed()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f11028b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f11028a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private handleFingerprintStateChanged()V
    .locals 7

    const v6, 0x7f1102a3

    const v5, 0x7f1102a0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    return-void

    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->applyHintAnimation(J)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintErrorMsgId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11029f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_8

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintAuthUserId:I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPhoneCalling(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintAuthUserId:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11029b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110299

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private showChargingTransientIndication()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onBottomAreaButtonClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)V

    return-void
.end method

.method public onFaceAuthFailed(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceAuthFailed(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFaceUnlockFailed()V

    return-void
.end method

.method public onFaceHelp(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x514

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public onFaceLocked()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceLocked()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFaceUnlockFailed()V

    return-void
.end method

.method public onFaceStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const-string/jumbo v1, " "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintAuthUserId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintErrorMsgId:I

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x514

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onFingerprintLockoutReset()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintLockoutReset()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x0

    const-string/jumbo v3, "is_pad"

    invoke-static {v3, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set6(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getChargingSpeed(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-eqz v3, :cond_6

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110344

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->showChargingTransientIndication()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set7(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    goto :goto_3
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get13(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1101fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get15(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get11(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleEnterArrowAnimation()V

    :cond_1
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get15(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_0
    return-void
.end method

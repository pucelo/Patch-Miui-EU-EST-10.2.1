.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$6;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showWirelessChargeAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$6;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$6;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->setTime(I)V

    return-void
.end method

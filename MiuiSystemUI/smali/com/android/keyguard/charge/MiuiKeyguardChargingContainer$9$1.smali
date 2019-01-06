.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9$1;
.super Ljava/lang/Object;
.source "MiuiKeyguardChargingContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;

.field final synthetic val$quickCharging:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9$1;->this$1:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;

    iput-boolean p2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9$1;->val$quickCharging:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9$1;->this$1:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;

    iget-object v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9$1;->val$quickCharging:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingLevelForAnima(IZ)V

    return-void
.end method

.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;
.super Ljava/lang/Object;
.source "MiuiKeyguardChargingContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startDownAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

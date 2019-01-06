.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiKeyguardChargingContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startBottomButtonClickAnim(Z)V
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

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$12;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$12;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$12;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$12;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setVisibility(I)V

    return-void
.end method

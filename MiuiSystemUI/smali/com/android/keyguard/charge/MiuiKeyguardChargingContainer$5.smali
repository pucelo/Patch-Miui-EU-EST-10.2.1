.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiKeyguardChargingContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startUpAnim()V
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

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setClickable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get3(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get4(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

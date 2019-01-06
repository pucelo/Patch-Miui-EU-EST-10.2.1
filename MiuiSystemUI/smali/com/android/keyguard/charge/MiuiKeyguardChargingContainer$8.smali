.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiKeyguardChargingContainer.java"


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

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get3(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get3(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get4(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get15(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get10(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

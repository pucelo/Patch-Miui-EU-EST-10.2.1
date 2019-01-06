.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;
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

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-set0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)Z

    return-void
.end method

.class Lcom/android/keyguard/MiuiKeyguardClock$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardClock;->playHorizontalToVerticalAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$10;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$10;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$10;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$10;->isCanceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->-set2(Z)Z

    :cond_0
    return-void
.end method

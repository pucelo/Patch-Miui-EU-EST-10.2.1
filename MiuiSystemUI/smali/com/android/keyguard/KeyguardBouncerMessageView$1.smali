.class Lcom/android/keyguard/KeyguardBouncerMessageView$1;
.super Ljava/lang/Object;
.source "KeyguardBouncerMessageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardBouncerMessageView;->applyHintAnimation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardBouncerMessageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBouncerMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBouncerMessageView$1;->this$0:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView$1;->this$0:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->-get0(Lcom/android/keyguard/KeyguardBouncerMessageView;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView$1;->this$0:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->resetAnimValue()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView$1;->this$0:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardBouncerMessageView;->applyHintAnimation(J)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

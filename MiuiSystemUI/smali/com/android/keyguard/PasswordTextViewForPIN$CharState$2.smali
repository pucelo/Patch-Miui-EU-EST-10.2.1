.class Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextViewForPIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPIN$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    iput-boolean v2, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->isVisible:Z

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get5(Lcom/android/keyguard/PasswordTextViewForPIN;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPIN;->-wrap0(Lcom/android/keyguard/PasswordTextViewForPIN;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v0, v2}, Lcom/android/keyguard/PasswordTextViewForPIN;->-set0(Lcom/android/keyguard/PasswordTextViewForPIN;Z)Z

    :cond_1
    return-void
.end method

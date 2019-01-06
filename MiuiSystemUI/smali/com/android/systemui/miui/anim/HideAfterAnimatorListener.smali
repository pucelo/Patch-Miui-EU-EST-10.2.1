.class public Lcom/android/systemui/miui/anim/HideAfterAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideAfterAnimatorListener.java"


# instance fields
.field private mCanceled:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/miui/anim/HideAfterAnimatorListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/anim/HideAfterAnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/miui/anim/HideAfterAnimatorListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/anim/HideAfterAnimatorListener;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/miui/anim/ShowBeforeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShowBeforeAnimatorListener.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/miui/anim/ShowBeforeAnimatorListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/anim/ShowBeforeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

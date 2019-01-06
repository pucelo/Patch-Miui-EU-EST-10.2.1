.class abstract Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private mTranslation:F

.field private mY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SelectionHandleView;)I
    .registers 2

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/Editor$SelectionHandleView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    return p1
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontalOffset()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setPivotX(F)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setScaleX(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->setTranslationX(F)V

    return-void
.end method

.method public fadeIn(II)V
    .registers 15

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    int-to-float v4, p1

    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    iget v6, p0, Landroid/widget/Editor$SelectionHandleView;->mHorizontalScale:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    move v0, p2

    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v5, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    fill-array-data v5, :array_6a

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    cmpl-float v4, v4, v11

    if-eqz v4, :cond_5f

    new-array v4, v10, [F

    aput v2, v4, v8

    int-to-float v5, p1

    aput v5, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/widget/Editor$SelectionHandleView$1;

    invoke-direct {v4, p0, p2}, Landroid/widget/Editor$SelectionHandleView$1;-><init>(Landroid/widget/Editor$SelectionHandleView;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput v11, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    :goto_59
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_5f
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_59

    nop

    :array_6a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fadeOut()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss()V

    return-void
.end method

.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_d

    new-instance v0, Landroid/widget/Editor$SelectionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {v0, v1, p0}, Landroid/widget/Editor$SelectionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    :cond_d
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public onAttached()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->showActionPopupWindow(I)V

    return-void
.end method

.method public onDetached()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-get1(Landroid/widget/Editor$SelectionModifierCursorController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->hideActionPopupWindow()V

    :cond_19
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    :goto_b
    return v0

    :pswitch_c
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Landroid/widget/Editor$SelectionHandleView;->showActionPopupWindow(I)V

    goto :goto_b

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-void
.end method

.method public setTranslation(F)V
    .registers 2

    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mTranslation:F

    return-void
.end method

.method public setY(I)V
    .registers 2

    iput p1, p0, Landroid/widget/Editor$SelectionHandleView;->mY:I

    return-void
.end method

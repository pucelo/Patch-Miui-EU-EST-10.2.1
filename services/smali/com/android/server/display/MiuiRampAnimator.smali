.class final Lcom/android/server/display/MiuiRampAnimator;
.super Ljava/lang/Object;
.source "MiuiRampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiRampAnimator$1;,
        Lcom/android/server/display/MiuiRampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/MiuiRampAnimator;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/MiuiRampAnimator;)Landroid/view/Choreographer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/MiuiRampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/MiuiRampAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/display/MiuiRampAnimator;)Lcom/android/server/display/MiuiRampAnimator$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/MiuiRampAnimator;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/MiuiRampAnimator;)Landroid/util/IntProperty;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/MiuiRampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/MiuiRampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/MiuiRampAnimator;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/MiuiRampAnimator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/MiuiRampAnimator;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/MiuiRampAnimator;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/MiuiRampAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiRampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    new-instance v0, Lcom/android/server/display/MiuiRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MiuiRampAnimator$1;-><init>(Lcom/android/server/display/MiuiRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/MiuiRampAnimator;->mProperty:Landroid/util/IntProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private cancelAnimationCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    if-nez v1, :cond_8

    if-gtz p2, :cond_33

    :cond_8
    iget-boolean v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    if-nez v1, :cond_10

    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_32

    :cond_10
    iput-boolean v3, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    iput v3, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    iget-object v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v2, p0, Lcom/android/server/display/MiuiRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iget-boolean v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    if-eqz v1, :cond_28

    iput-boolean v3, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/server/display/MiuiRampAnimator;->cancelAnimationCallback()V

    :cond_28
    iget-object v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    invoke-interface {v1}, Lcom/android/server/display/MiuiRampAnimator$Listener;->onAnimationEnd()V

    :cond_31
    return v4

    :cond_32
    return v3

    :cond_33
    iget-boolean v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    if-le p2, v1, :cond_5d

    :cond_3b
    :goto_3b
    iput p2, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    :cond_3d
    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    if-eq v1, p1, :cond_72

    const/4 v0, 0x1

    :goto_42
    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    iget-boolean v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    if-nez v1, :cond_5c

    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_5c

    iput-boolean v4, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/MiuiRampAnimator;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/android/server/display/MiuiRampAnimator;->postAnimationCallback()V

    :cond_5c
    return v0

    :cond_5d
    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-gt p1, v1, :cond_67

    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    iget v2, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    if-le v1, v2, :cond_3b

    :cond_67
    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    iget v2, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-gt v1, v2, :cond_3d

    iget v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-gt v1, p1, :cond_3d

    goto :goto_3b

    :cond_72
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public isAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/MiuiRampAnimator$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    return-void
.end method

.class Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimationHelper"
.end annotation


# instance fields
.field private mCallbackScheduled:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private scheduleCallback()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    if-nez v0, :cond_d

    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    return-void
.end method

.method public removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 8

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v5}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    iput-boolean v6, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_b
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator;

    invoke-static {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->-wrap0(Landroid/view/RenderNodeAnimator;J)Z

    move-result v5

    if-nez v5, :cond_2a

    if-eq v1, v4, :cond_28

    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v1, v1, 0x1

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_2d
    :goto_2d
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_43

    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2d

    :cond_43
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4e

    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    :cond_4e
    return-void
.end method

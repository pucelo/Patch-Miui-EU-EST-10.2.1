.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$1;,
        Landroid/animation/AnimatorSet$AnimationEvent;,
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$SeekState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private mChildrenInitialized:Z

.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDependencyDirty:Z

.field private mDummyListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDuration:J

.field private final mEndCanBeCalled:Z

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstFrame:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastEventId:I

.field private mLastFrameTime:J

.field private mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseTime:J

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mReversing:Z

.field private mRootNode:Landroid/animation/AnimatorSet$Node;

.field private mSeekState:Landroid/animation/AnimatorSet$SeekState;

.field private mSelfPulse:Z

.field private final mShouldIgnoreEndWithoutStart:Z

.field private final mShouldResetValuesAtStart:Z

.field private mStartDelay:J

.field private mStarted:Z

.field private mTotalDuration:J


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/AnimatorSet;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return v0
.end method

.method static synthetic -get2(Landroid/animation/AnimatorSet;)J
    .registers 3

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .registers 3

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_ae

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {v2, v3}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mDuration:J

    iput-object v4, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v2, -0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    new-instance v2, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v2, p0, v4}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    new-instance v2, Landroid/animation/AnimatorSet$1;

    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_90

    :cond_84
    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    const/4 v1, 0x1

    :goto_87
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    return-void

    :cond_90
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_a8

    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    :goto_9c
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_ab

    const/4 v1, 0x1

    goto :goto_87

    :cond_a8
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_9c

    :cond_ab
    const/4 v1, 0x0

    goto :goto_87

    nop

    :array_ae
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimationCallback(J)V
    .registers 6

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private addDummyListener()V
    .registers 4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method private createDependencyGraph()V
    .registers 15

    iget-boolean v9, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v9, :cond_31

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2b

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_2e

    const/4 v1, 0x1

    :cond_2b
    if-nez v1, :cond_31

    return-void

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_31
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v7, :cond_4b

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v7, :cond_9d

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-boolean v9, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v9, :cond_5d

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_5d
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v9, :cond_5a

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v9}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_75
    if-ge v3, v6, :cond_87

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v9, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_87
    const/4 v3, 0x0

    :goto_88
    if-ge v3, v6, :cond_5a

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_9d
    const/4 v2, 0x0

    :goto_9e
    if-ge v2, v7, :cond_b8

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v4, v9, :cond_b5

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_b5

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_b8
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v9, v8}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortAnimationEvents()V

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-void
.end method

.method private endAnimation()V
    .registers 9

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v3, -0x1

    iput v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v1, :cond_3e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3e
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeDummyListener()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return-void
.end method

.method private findLatestEventIdForTime(J)I
    .registers 14

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_36

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v6

    sub-long p1, v6, p1

    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_33

    :goto_17
    iput v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v5, -0x1

    :goto_1d
    if-ltz v2, :cond_5a

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-ltz v5, :cond_30

    move v3, v2

    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_33
    iget v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_17

    :cond_36
    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v1, v5, 0x1

    :goto_3a
    if-ge v1, v4, :cond_5a

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_57

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-gtz v5, :cond_57

    move v3, v1

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_5a
    return v3
.end method

.method private findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    return-void
.end method

.method private forceToEnd()V
    .registers 7

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void

    :cond_8
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_1f

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    :goto_16
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    return-void

    :cond_1f
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2c

    const-wide/32 v0, 0x7fffffff

    :cond_2c
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    goto :goto_16
.end method

.method private getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .registers 4

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    if-nez v0, :cond_19

    new-instance v0, Landroid/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    return-object v0
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J
    .registers 7

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J
    .registers 8

    if-eqz p4, :cond_c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long p1, v0, p1

    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_c
    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private handleAnimationEvents(IIJ)V
    .registers 12

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v3, :cond_58

    const/4 v3, -0x1

    if-ne p1, v3, :cond_d

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_d
    add-int/lit8 v1, p1, -0x1

    :goto_f
    if-lt v1, p2, :cond_a2

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_45

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_2d
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_45
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    iget-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    invoke-direct {p0, p3, p4, v2}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_42

    :cond_58
    add-int/lit8 v1, p1, 0x1

    :goto_5a
    if-gt v1, p2, :cond_a2

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v3, :cond_8f

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_7e

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_7e
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_8f
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8c

    iget-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8c

    invoke-direct {p0, p3, p4, v2}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_8c

    :cond_a2
    return-void
.end method

.method private initAnimation()V
    .registers 5

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_1f

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1f
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    return-void
.end method

.method private initChildren()V
    .registers 2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    :cond_d
    return-void
.end method

.method private static isEmptySet(Landroid/animation/AnimatorSet;)Z
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    return v6

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    instance-of v2, v0, Landroid/animation/AnimatorSet;

    if-nez v2, :cond_26

    return v6

    :cond_26
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v2

    if-nez v2, :cond_2f

    return v6

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_32
    const/4 v2, 0x1

    return v2
.end method

.method private printChildCount()V
    .registers 11

    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "AnimatorSet"

    const-string/jumbo v9, "Current tree: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    if-ge v3, v5, :cond_5f

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    const/4 v7, 0x0

    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v8, :cond_53

    const/4 v2, 0x0

    :goto_37
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_53

    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v8, v1, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v6, :cond_50

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_53
    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_5f
    const-string/jumbo v8, "AnimatorSet"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_6a
    return-void
.end method

.method private pulseFrame(Landroid/animation/AnimatorSet$Node;J)V
    .registers 8

    iget-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v1, :cond_1a

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_f
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    long-to-float v2, p2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->pulseAnimationFrame(J)Z

    move-result v1

    iput-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    :cond_1a
    return-void
.end method

.method private removeAnimationCallback()V
    .registers 3

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method private removeDummyListener()V
    .registers 4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method private skipToStartValue(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    return-void
.end method

.method private sortAnimationEvents()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_46

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x0

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x1

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x2

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_46
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/animation/AnimatorSet$3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5d
    if-ge v4, v3, :cond_12f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12b

    iget-object v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v12, v12, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v14, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v14, v14, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_9a

    const/4 v6, 0x1

    :goto_7b
    move v11, v3

    move v9, v3

    add-int/lit8 v5, v4, 0x1

    :goto_7f
    if-ge v5, v3, :cond_85

    if-ge v11, v3, :cond_bb

    if-ge v9, v3, :cond_bb

    :cond_85
    if-eqz v6, :cond_ee

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_ee

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_9a
    iget-object v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v12, v12, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v14, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v14, v14, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v0, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v16

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-nez v12, :cond_b8

    const/4 v6, 0x0

    goto :goto_7b

    :cond_b8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_bb
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v13, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    if-ne v12, v13, :cond_da

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v12, :cond_dd

    move v11, v5

    :cond_da
    :goto_da
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    :cond_dd
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_da

    move v9, v5

    goto :goto_da

    :cond_ee
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v9, v12, :cond_101

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_101
    if-eqz v6, :cond_116

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :cond_116
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_5d

    :cond_12b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5d

    :cond_12f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_151

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v12, :cond_151

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Sorting went bad, the start event should always be at index 0"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_151
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x2

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v12, :cond_1b8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c1

    :cond_1b8
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, the last event is not an end event"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1c1
    return-void
.end method

.method private start(ZZ)V
    .registers 12

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_10

    new-instance v6, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v7, "Animators may only be run on Looper threads"

    invoke-direct {v6, v7}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_10
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-boolean p2, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v4, :cond_36

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iput-boolean v8, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v6, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_36
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4c

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v7, "Cannot reverse infinite AnimatorSet"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4c
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-static {p0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->startAnimation()V

    :cond_57
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_76

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_68
    if-ge v0, v3, :cond_76

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v6, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_76
    if-eqz v1, :cond_7b

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_7b
    return-void
.end method

.method private startAnimation()V
    .registers 12

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->addDummyListener()V

    invoke-direct {p0, v8, v9}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->getPlayTimeNormalized()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_1c

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_1c

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    :cond_1c
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    if-eqz v5, :cond_2d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_72

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    :cond_2d
    :goto_2d
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v5, :cond_37

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_af

    :cond_37
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v5

    if-eqz v5, :cond_b8

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v6, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v2

    :goto_4c
    invoke-direct {p0, v2, v3}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {p0, v5, v4, v2, v3}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_5c
    if-ltz v1, :cond_bb

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-boolean v5, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v5, :cond_6f

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    :cond_72
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_81

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_2d

    :cond_81
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_89
    if-ltz v1, :cond_2d

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v5, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v10, :cond_ac

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-virtual {v0, v10}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_ac
    add-int/lit8 v1, v1, -0x1

    goto :goto_89

    :cond_af
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v5

    if-nez v5, :cond_37

    :goto_b7
    return-void

    :cond_b8
    const-wide/16 v2, 0x0

    goto :goto_4c

    :cond_bb
    iput v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_b7
.end method

.method private updateAnimatorsDuration()V
    .registers 9

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_23

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_23

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    const-wide/16 v8, -0x1

    iget-object v6, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v6, :cond_28

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne p1, v6, :cond_27

    const/4 v2, 0x0

    :goto_c
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_27

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v5, v6, :cond_24

    iput-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    return-void

    :cond_28
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v1, :cond_c3

    iget-object v6, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    iget-object v6, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_8f

    move v4, v3

    :goto_4b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6c

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iput-object v12, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iput-wide v8, v6, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iput-wide v8, v6, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_6c
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-object v12, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    const-string/jumbo v6, "AnimatorSet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cycle found in AnimatorSet: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_8f
    iget-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a1

    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_a5

    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :cond_a1
    :goto_a1
    invoke-direct {p0, v0, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    goto :goto_8c

    :cond_a5
    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-wide v10, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_b3

    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iget-wide v6, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    :cond_b3
    iget-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_bd

    move-wide v6, v8

    :goto_ba
    iput-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_a1

    :cond_bd
    iget-wide v6, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v10, v0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    add-long/2addr v6, v10

    goto :goto_ba

    :cond_c3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method animateBasedOnPlayTime(JJZ)V
    .registers 25

    const-wide/16 v8, 0x0

    cmp-long v5, p1, v8

    if-ltz v5, :cond_c

    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-gez v5, :cond_15

    :cond_c
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Error: Play time should never be negative."

    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_15
    if-eqz p5, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v8

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-nez v5, :cond_2a

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Cannot reverse AnimatorSet with infinite duration"

    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    sub-long v12, v8, v16

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    sub-long p1, v12, p1

    sub-long p3, v12, p3

    const/16 p5, 0x0

    :cond_42
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_4e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_74

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-gtz v5, :cond_74

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v8

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-nez v5, :cond_a0

    :cond_74
    const/4 v11, 0x0

    :goto_75
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_cc

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/AnimatorSet$Node;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v6

    if-nez p5, :cond_94

    iget-object v5, v14, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    sub-long/2addr v6, v8

    :cond_94
    iget-object v5, v14, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/animation/Animator;->animateBasedOnPlayTime(JJZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_75

    :cond_a0
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_bc

    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-eqz v5, :cond_b7

    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v5, v8, p1

    if-lez v5, :cond_bc

    :cond_b7
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_c9

    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_c9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    :cond_cc
    return-void
.end method

.method public canReverse()Z
    .registers 5

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public cancel()V
    .registers 8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-nez v5, :cond_f

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v6, "Animators may only be run on Looper threads"

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_59

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_35

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v3, :cond_35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_35
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_41
    if-ge v0, v2, :cond_51

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_51
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    :cond_59
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .registers 16

    const/4 v14, 0x1

    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v9, -0x1

    iput v9, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    new-instance v9, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v9, p0, v10}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState;)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iput-boolean v14, v0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v9, Landroid/animation/AnimatorSet$2;

    invoke-direct {v9, p0, v0}, Landroid/animation/AnimatorSet$2;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    iput-boolean v14, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_54
    if-ge v4, v7, :cond_7b

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v6

    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v11, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v9, v11}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v9, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :cond_7b
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v9, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v9, v9, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v9, Landroid/animation/ValueAnimator;

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    :goto_8e
    if-ge v2, v7, :cond_11b

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v9, :cond_c1

    move-object v9, v10

    :goto_a3
    iput-object v9, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v9, :cond_ca

    const/4 v8, 0x0

    :goto_aa
    const/4 v3, 0x0

    :goto_ab
    if-ge v3, v8, :cond_d1

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    :cond_c1
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    goto :goto_a3

    :cond_ca
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_aa

    :cond_d1
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v9, :cond_ed

    const/4 v8, 0x0

    :goto_d6
    const/4 v3, 0x0

    :goto_d7
    if-ge v3, v8, :cond_f4

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d7

    :cond_ed
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_d6

    :cond_f4
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_110

    const/4 v8, 0x0

    :goto_f9
    const/4 v3, 0x0

    :goto_fa
    if-ge v3, v8, :cond_117

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_fa

    :cond_110
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_f9

    :cond_117
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8e

    :cond_11b
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .registers 3

    return-void
.end method

.method public doAnimationFrame(J)Z
    .registers 22

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    const/4 v12, 0x0

    cmpl-float v12, v4, v12

    if-nez v12, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->forceToEnd()V

    const/4 v12, 0x1

    return v12

    :cond_e
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_1e

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mFirstFrame:J

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v12, :cond_2f

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mPauseTime:J

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    const/4 v12, 0x0

    return v12

    :cond_2f
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_4e

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    sub-long v14, p1, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    :cond_4e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v12

    if-eqz v12, :cond_83

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v12, :cond_9e

    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v14

    long-to-float v13, v14

    mul-float/2addr v13, v4

    sub-float/2addr v12, v13

    float-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    :goto_7c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    :cond_83
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v12, :cond_ba

    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    long-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_ba

    const/4 v12, 0x0

    return v12

    :cond_9e
    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    long-to-float v13, v14

    mul-float/2addr v13, v4

    sub-float/2addr v12, v13

    float-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    goto :goto_7c

    :cond_ba
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long v12, p1, v12

    long-to-float v12, v12

    div-float/2addr v12, v4

    float-to-long v10, v12

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v7

    move-object/from16 v0, p0

    iget v9, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v10, v11}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    move-object/from16 v0, p0

    iput v7, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v6, 0x0

    :goto_dd
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_103

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v12, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v12, :cond_100

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_100
    add-int/lit8 v6, v6, 0x1

    goto :goto_dd

    :cond_103
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :goto_10d
    if-ltz v6, :cond_127

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$Node;

    iget-boolean v12, v12, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v12, :cond_124

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_124
    add-int/lit8 v6, v6, -0x1

    goto :goto_10d

    :cond_127
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v12, :cond_163

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_150

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v12, v13, :cond_150

    const/4 v5, 0x1

    :cond_149
    :goto_149
    if-eqz v5, :cond_181

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    const/4 v12, 0x1

    return v12

    :cond_150
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_149

    move-object/from16 v0, p0

    iget v12, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v13, 0x3

    if-ge v12, v13, :cond_149

    const/4 v5, 0x1

    goto :goto_149

    :cond_163
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_17f

    move-object/from16 v0, p0

    iget v12, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_17f

    const/4 v5, 0x1

    goto :goto_149

    :cond_17f
    const/4 v5, 0x0

    goto :goto_149

    :cond_181
    const/4 v12, 0x0

    return v12
.end method

.method public end()V
    .registers 6

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_10

    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "Animators may only be run on Looper threads"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_72

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_60

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_32
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    :cond_34
    :goto_34
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    if-lez v2, :cond_b4

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v2, :cond_34

    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v2, v4, :cond_63

    invoke-virtual {v0}, Landroid/animation/Animator;->reverse()V

    goto :goto_34

    :cond_60
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_32

    :cond_63
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_34

    :cond_72
    :goto_72
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_b4

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v2, :cond_72

    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v2, :cond_a6

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_72

    :cond_a6
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v2, v4, :cond_72

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_72

    :cond_b4
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_b9
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    return-void
.end method

.method public getChangingConfigurations()I
    .registers 5

    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_1f

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v3, :cond_22

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v4, :cond_1f

    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    return-object v0
.end method

.method public getCurrentPlayTime()J
    .registers 7

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v2

    return-wide v2

    :cond_f
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1a

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1a
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_25
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_32

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2

    :cond_32
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .registers 3

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method isInitialized()Z
    .registers 4

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    return v2

    :cond_6
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v0, 0x0

    :cond_21
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    return v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public isRunning()Z
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0

    :cond_b
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public pause()V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_f

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_1e

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v1, :cond_1e

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    :cond_1e
    return-void
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    :cond_9
    return-object v0
.end method

.method public playSequentially(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .registers 5

    if-eqz p1, :cond_c

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    :goto_e
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_c

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public playTogether(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_24

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-nez v2, :cond_20

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    goto :goto_d

    :cond_20
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_d

    :cond_24
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .registers 5

    if-eqz p1, :cond_15

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const/4 v1, 0x1

    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_15

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .registers 7

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    if-eqz v0, :cond_27

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_27

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_27

    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    :cond_27
    return-void
.end method

.method public reverse()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .registers 10

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Cannot seek in reverse in an infinite AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_35

    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Play time should always be in between0 and duration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    cmp-long v0, p1, v4

    if-ltz v0, :cond_2c

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_78

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Something went wrong. mReversing should not be set when AnimatorSet is not started."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-nez v0, :cond_69

    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, v0}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, v4, v5, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    :cond_69
    iget-boolean v6, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/animation/AnimatorSet;->animateBasedOnPlayTime(JJZ)V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    :goto_77
    return-void

    :cond_78
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    goto :goto_77
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .registers 16

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    cmp-long v5, p1, v10

    if-gez v5, :cond_13

    const-string/jumbo v5, "AnimatorSet"

    const-string/jumbo v6, "Start delay should always be non-negative"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    :cond_13
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long v0, p1, v6

    cmp-long v5, v0, v10

    if-nez v5, :cond_1c

    return-void

    :cond_1c
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v5, :cond_64

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v4, :cond_59

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v3, v5, :cond_3e

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3e
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_51

    move-wide v6, v8

    :goto_45
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_55

    move-wide v6, v8

    :goto_4e
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_3b

    :cond_51
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v6, v0

    goto :goto_45

    :cond_55
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-long/2addr v6, v0

    goto :goto_4e

    :cond_59
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_64

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    :cond_64
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 7

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_29

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    instance-of v4, v0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1f

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1c

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_29
    return-void
.end method

.method public setupEndValues()V
    .registers 5

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_1d

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_1a

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public setupStartValues()V
    .registers 5

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_1d

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_1a

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public shouldPlayTogether()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method skipToEndValue(Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Children must be initialized."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_3e

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1e
    if-ltz v0, :cond_66

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_66

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_66
    return-void
.end method

.method public start()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method startWithoutPulsing(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AnimatorSet@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v3, :cond_55

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

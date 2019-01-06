.class public abstract Lmiui/maml/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"

.field public static final PLAY_TO_END:I = -0x1

.field private static final VAR_CURRENT_FRAME:Ljava/lang/String; = "current_frame"


# instance fields
.field private mAnimEndTime:J

.field private mAnimStartTime:J

.field protected mAttrs:[Ljava/lang/String;

.field private mCurValues:[D

.field private mCurrentFrame:Lmiui/maml/data/IndexedVariable;

.field private mDelay:Lmiui/maml/data/Expression;

.field private mDisable:Z

.field private mEndTime:J

.field private mHasName:Z

.field private mInitPaused:Z

.field private mIsDelay:Z

.field private mIsFirstFrame:Z

.field private mIsFirstReset:Z

.field private mIsLastFrame:Z

.field private mIsLoop:Z

.field private mIsPaused:Z

.field private mIsReverse:Z

.field private mIsTimeInfinite:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoop:Z

.field private mName:Ljava/lang/String;

.field private mPauseTime:J

.field private mPlayTimeRange:J

.field private mRealTimeRange:J

.field private mResetTime:J

.field protected mScreenElement:Lmiui/maml/elements/ScreenElement;

.field private mStartTime:J

.field private mTag:Ljava/lang/String;

.field private mTriggers:Lmiui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0, p4}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .registers 5

    const-string/jumbo v0, "value"

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    iput-object p4, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    iput-object p3, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-direct {p0, p1, p2}, Lmiui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 5

    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method private getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F
    .registers 12

    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-nez v1, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_8
    if-eqz p1, :cond_14

    iget-object v1, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    invoke-virtual {v1, v0}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    move-result v0

    :cond_14
    return v0

    :cond_15
    sub-long v2, p2, p4

    long-to-float v1, v2

    long-to-float v2, p6

    div-float v0, v1, v2

    goto :goto_8
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    invoke-virtual {p0}, Lmiui/maml/animation/BaseAnimation;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v2, :cond_41

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "current_frame"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    :cond_41
    const-string/jumbo v2, "delay"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "initPause"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mInitPaused:Z

    const-string/jumbo v2, "false"

    const-string/jumbo v5, "loop"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    const-string/jumbo v2, "tag"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    const-string/jumbo v5, "Item"

    aput-object v5, v2, v3

    new-instance v5, Lmiui/maml/animation/BaseAnimation$1;

    invoke-direct {v5, p0}, Lmiui/maml/animation/BaseAnimation$1;-><init>(Lmiui/maml/animation/BaseAnimation;)V

    invoke-static {p1, v2, v5}, Lmiui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_9a

    const-string/jumbo v2, "BaseAnimation"

    const-string/jumbo v3, "empty items"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9a
    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v6, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    const-wide v8, 0xe8d4a51000L

    cmp-long v2, v6, v8

    if-ltz v2, :cond_eb

    move v2, v3

    :goto_b6
    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_ed

    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz v2, :cond_ed

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v2, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_d8
    const-string/jumbo v2, "Triggers"

    invoke-static {p1, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_ea

    new-instance v2, Lmiui/maml/CommandTriggers;

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-direct {v2, v0, v3}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    :cond_ea
    return-void

    :cond_eb
    move v2, v4

    goto :goto_b6

    :cond_ed
    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v2, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_d8
.end method

.method private reevaluate()V
    .registers 13

    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_36

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-object v3, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_2d

    iget-object v3, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    double-to-long v6, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gez v3, :cond_27

    const-wide/16 v6, 0x0

    :cond_27
    add-long/2addr v4, v6

    iput-wide v4, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2d
    iget-wide v10, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v3, v10, v4

    if-ltz v3, :cond_2a

    iget-wide v4, v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_2a

    :cond_36
    const-wide v10, 0xe8d4a51000L

    cmp-long v3, v4, v10

    if-ltz v3, :cond_57

    move v3, v8

    :goto_40
    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-le v0, v8, :cond_59

    iget-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz v3, :cond_59

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x2

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v8, v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v8, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_56
    return-void

    :cond_57
    const/4 v3, 0x0

    goto :goto_40

    :cond_59
    iput-wide v4, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_56
.end method

.method private resetTime()V
    .registers 7

    const/4 v3, 0x0

    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-eqz v2, :cond_7

    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    :cond_7
    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation;->reevaluate()V

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    invoke-direct {p0, v2, v3}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    invoke-direct {p0, v2, v3}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iget-wide v4, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    return-void
.end method

.method private transToAnimTime(J)J
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    :cond_c
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    return-wide v0

    :cond_f
    return-wide p1
.end method


# virtual methods
.method public finish()V
    .registers 7

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v3}, Lmiui/maml/CommandTriggers;->finish()V

    :cond_9
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_20

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    array-length v1, v3

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_2f

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2f
    return-void
.end method

.method public getAttrs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurValue(I)D
    .registers 4

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method protected getDefaultValue()D
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/maml/animation/BaseAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    :goto_b
    return-wide v2

    :cond_c
    const-wide/16 v2, 0x0

    goto :goto_b
.end method

.method protected getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    return-object v0

    :cond_c
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getVariables()Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->init()V

    :cond_9
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected onCreateItem(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .registers 4

    new-instance v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-direct {v0, p1, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 16

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lmiui/maml/animation/BaseAnimation;->getDefaultValue()D

    move-result-wide v2

    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v6

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_26

    if-nez p1, :cond_21

    move-wide v4, v2

    :goto_12
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p2, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v8

    sub-double/2addr v8, v4

    float-to-double v10, p3

    mul-double/2addr v8, v10

    add-double/2addr v8, v4

    aput-wide v8, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    goto :goto_12

    :cond_26
    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    :cond_9
    return-void
.end method

.method public pauseAnim(J)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iput-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    :cond_e
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 14

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_13

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_77

    :cond_13
    :goto_13
    iput-wide p3, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iput-wide p3, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_23

    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_7a

    :cond_23
    :goto_23
    iput-wide p5, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    iput-wide p5, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iput-boolean p7, p0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    iput-boolean p8, p0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_43

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7d

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7d

    :cond_43
    const/4 v0, 0x1

    :goto_44
    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_51

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    :cond_51
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_66

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    long-to-double v0, v0

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    :cond_66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    return-void

    :cond_77
    const-wide/16 p3, 0x0

    goto :goto_13

    :cond_7a
    const-wide/16 p5, 0x0

    goto :goto_23

    :cond_7d
    const/4 v0, 0x0

    goto :goto_44
.end method

.method public reset(J)V
    .registers 16

    const/4 v11, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    iget-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v1

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v0, :cond_1a

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p0, v10}, Lmiui/maml/animation/BaseAnimation;->getDelayValue(I)D

    move-result-wide v2

    aput-wide v2, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_1a
    iget-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mInitPaused:Z

    if-eqz v1, :cond_37

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, v4

    move v9, v8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    :goto_25
    iget-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_30
    const-string/jumbo v1, "init"

    invoke-virtual {p0, v1}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    return-void

    :cond_37
    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    move v8, v11

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    goto :goto_25
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    :cond_9
    return-void
.end method

.method public resumeAnim(J)V
    .registers 8

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    :cond_15
    return-void
.end method

.method public setCurValue(ID)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public setDisable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    return-void
.end method

.method public final tick(J)V
    .registers 26

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v4, :cond_d

    :cond_c
    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    move-wide/from16 v18, v0

    sub-long v14, p1, v18

    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-gez v4, :cond_28

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    if-eqz v4, :cond_a3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    const-wide/16 v14, 0x0

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-nez v4, :cond_48

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-eqz v4, :cond_4b

    :cond_48
    invoke-direct/range {p0 .. p0}, Lmiui/maml/animation/BaseAnimation;->resetTime()V

    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-nez v4, :cond_61

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_61

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b2

    :cond_61
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v4, :cond_b2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v4, :cond_9a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_9a
    const-string/jumbo v4, "end"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    return-void

    :cond_a3
    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void

    :cond_b2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    move-wide/from16 v18, v0

    cmp-long v4, v14, v18

    if-ltz v4, :cond_d9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    rem-long v18, v14, v18

    sub-long v18, p1, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    :cond_d9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    if-eqz v4, :cond_12b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    move-wide/from16 v18, v0

    sub-long v14, v18, v14

    :goto_e7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    rem-long v6, v14, v18

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_ff
    if-ge v13, v12, :cond_154

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v18, v0

    cmp-long v4, v6, v18

    if-gez v4, :cond_151

    const-wide/16 v8, 0x0

    if-nez v13, :cond_134

    move-object/from16 v0, v16

    iget-wide v10, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    :goto_11d
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lmiui/maml/animation/BaseAnimation;->getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v4}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void

    :cond_12b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    goto :goto_e7

    :cond_134
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v17, v13, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v20, v0

    sub-long v10, v18, v20

    iget-wide v8, v5, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_11d

    :cond_151
    add-int/lit8 v13, v13, 0x1

    goto :goto_ff

    :cond_154
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v4}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void
.end method

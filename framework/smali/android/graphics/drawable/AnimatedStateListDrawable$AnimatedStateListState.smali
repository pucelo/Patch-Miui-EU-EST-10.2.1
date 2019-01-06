.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
.super Landroid/graphics/drawable/StateListDrawable$StateListState;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSED_BIT:J = 0x100000000L

.field private static final REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field mAnimThemeAttrs:[I

.field mStateIds:Landroid/util/SparseIntArray;

.field mTransitions:Landroid/util/LongSparseLongArray;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_12

    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    :goto_11
    return-void

    :cond_12
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    goto :goto_11
.end method

.method private static generateTransitionKey(II)J
    .registers 6

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseIntArray;->put(II)V

    return v0
.end method

.method addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .registers 17

    invoke-super {p0, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    if-eqz p4, :cond_11

    const-wide v6, 0x200000000L

    :cond_11
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    int-to-long v8, v4

    or-long/2addr v8, v6

    invoke-virtual {v5, v0, v1, v8, v9}, Landroid/util/LongSparseLongArray;->append(JJ)V

    if-eqz p4, :cond_2b

    invoke-static {p2, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v2

    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    int-to-long v8, v4

    const-wide v10, 0x100000000L

    or-long/2addr v8, v10

    or-long/2addr v8, v6

    invoke-virtual {v5, v2, v3, v8, v9}, Landroid/util/LongSparseLongArray;->append(JJ)V

    :cond_2b
    return v4
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->canApplyTheme()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method getKeyframeIdAt(I)I
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_3
.end method

.method indexOfKeyframe([I)I
    .registers 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    return v1
.end method

.method indexOfTransition(II)I
    .registers 9

    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method isTransitionReversed(II)Z
    .registers 9

    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const-wide v4, 0x100000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method mutate()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable;)V

    return-object v0
.end method

.method transitionHasReversibleFlag(II)Z
    .registers 9

    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const-wide v4, 0x200000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

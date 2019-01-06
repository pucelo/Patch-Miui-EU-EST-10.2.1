.class public Landroid/graphics/drawable/AnimatedVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$1;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;
    }
.end annotation


# static fields
.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedVectorDrawable"

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

.field private mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

.field private mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mMutated:Z

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .registers 1

    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->shouldIgnoreInvalidAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()J
    .registers 2

    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateAnimatorSet()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap10(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    return-void
.end method

.method static synthetic -wrap11(J[FI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[FI)V

    return-void
.end method

.method static synthetic -wrap12(J[II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[II)V

    return-void
.end method

.method static synthetic -wrap13(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetVectorDrawableTarget(JJ)V

    return-void
.end method

.method static synthetic -wrap14(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    return-void
.end method

.method static synthetic -wrap2(JIFF)J
    .registers 7

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateGroupPropertyHolder(JIFF)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(JIII)J
    .registers 7

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathColorPropertyHolder(JIII)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(JJJ)J
    .registers 8

    invoke-static/range {p0 .. p5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathDataPropertyHolder(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(JIFF)J
    .registers 7

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathPropertyHolder(JIFF)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap6(JFF)J
    .registers 6

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateRootAlphaPropertyHolder(JFF)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap7(JJJJJII)V
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nAddAnimator(JJJJJII)V

    return-void
.end method

.method static synthetic -wrap8(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nEnd(J)V

    return-void
.end method

.method static synthetic -wrap9(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReset(J)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, v1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iput-object p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Property;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_12

    const-class v4, Ljava/lang/Float;

    if-ne v0, v4, :cond_1d

    :cond_12
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_1a

    const-class v4, Ljava/lang/Float;

    if-ne v1, v4, :cond_1b

    :cond_1a
    :goto_1a
    return v2

    :cond_1b
    move v2, v3

    goto :goto_1a

    :cond_1d
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_25

    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_30

    :cond_25
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_2d

    const-class v4, Ljava/lang/Integer;

    if-ne v1, v4, :cond_2e

    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    move v2, v3

    goto :goto_2d

    :cond_30
    if-ne v0, v1, :cond_33

    :goto_32
    return v2

    :cond_33
    move v2, v3

    goto :goto_32
.end method

.method private ensureAnimatorSet()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    :cond_1e
    return-void
.end method

.method private fallbackOntoUI()V
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v1, :cond_30

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    :cond_1c
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2b
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-wrap0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    :cond_30
    return-void
.end method

.method private static native nAddAnimator(JJJJJII)V
.end method

.method private static native nCreateAnimatorSet()J
.end method

.method private static native nCreateGroupPropertyHolder(JIFF)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreatePathColorPropertyHolder(JIII)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreatePathDataPropertyHolder(JJJ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreatePathPropertyHolder(JIFF)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateRootAlphaPropertyHolder(JFF)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nEnd(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private static native nSetPropertyHolderData(J[FI)V
.end method

.method private static native nSetPropertyHolderData(J[II)V
.end method

.method private static native nSetVectorDrawableTarget(JJ)V
.end method

.method private static native nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private removeAnimatorSetListener()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    :cond_e
    return-void
.end method

.method private static shouldIgnoreInvalidAnimation()Z
    .registers 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    return v3

    :cond_e
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_19

    return v3

    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method private static updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .registers 15

    instance-of v8, p0, Landroid/animation/ObjectAnimator;

    if-eqz v8, :cond_85

    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x0

    :goto_b
    array-length v8, v2

    if-ge v3, v8, :cond_a3

    aget-object v6, v2, v3

    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const/4 v4, 0x0

    instance-of v8, v7, Landroid/graphics/drawable/VectorDrawable$VObject;

    if-eqz v8, :cond_31

    check-cast v7, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/VectorDrawable$VObject;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v4

    :cond_23
    :goto_23
    if-eqz v4, :cond_2e

    invoke-static {v6, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-virtual {v6, v4}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_31
    instance-of v8, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v8, :cond_23

    check-cast v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v4

    goto :goto_23

    :cond_3c
    if-nez p3, :cond_2e

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Wrong valueType for Property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".  Expected type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/util/Property;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ". Actual "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "type defined in resources: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_85
    instance-of v8, p0, Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_a3

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    goto :goto_93

    :cond_a3
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_13
    if-eqz p1, :cond_1e

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    :cond_1e
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v1, :cond_26

    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    :cond_26
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public canReverse()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->canReverse()Z

    move-result v0

    return v0
.end method

.method public clearAnimationCallbacks()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearMutated()V
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->clearMutated()V

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get1(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_25

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    :cond_25
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public forceAnimationOnUI()V
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v1, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Cannot force Animated Vector Drawable to run on UI thread when the animation has started on RenderThread."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    :cond_1c
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    add-int/lit8 v8, v14, 0x1

    :goto_10
    const/4 v14, 0x1

    if-eq v7, v14, :cond_b1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v8, :cond_1c

    const/4 v14, 0x3

    if-eq v7, v14, :cond_b1

    :cond_1c
    const/4 v14, 0x2

    if-ne v7, v14, :cond_6c

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "animated-vector"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_71

    sget-object v14, Lcom/android/internal/R$styleable;->AnimatedVectorDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_69

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/VectorDrawable;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v13}, Landroid/graphics/drawable/VectorDrawable;->getPixelSize()F

    move-result v9

    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v14, :cond_67

    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_67
    iput-object v13, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    :cond_69
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6c
    :goto_6c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_10

    :cond_71
    const-string/jumbo v14, "target"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6c

    sget-object v14, Lcom/android/internal/R$styleable;->AnimatedVectorDrawableTarget:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_a9

    if-eqz p4, :cond_ad

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v5

    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-static {v10}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v15

    invoke-static {v5, v12, v14, v15}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    invoke-virtual {v10, v12, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    :cond_a9
    :goto_a9
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6c

    :cond_ad
    invoke-virtual {v10, v4, v9, v12}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addPendingAnimator(IFLjava/lang/String;)V

    goto :goto_a9

    :cond_b1
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v14, :cond_b7

    const/16 p1, 0x0

    :cond_b7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1a

    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    :cond_1a
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    :cond_e
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_1e

    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$2;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    :cond_1e
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    return-void
.end method

.method public reverse()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "AnimatedVectorDrawable"

    const-string/jumbo v1, "AnimatedVectorDrawable can\'t reverse()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_23

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->resume()V

    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    :cond_23
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->pause()V

    goto :goto_17
.end method

.method public start()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    return-void
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return v2

    :cond_8
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_19

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    :cond_19
    return v0
.end method

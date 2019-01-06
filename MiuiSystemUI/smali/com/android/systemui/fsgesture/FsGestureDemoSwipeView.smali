.class public Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
.super Landroid/widget/FrameLayout;
.source "FsGestureDemoSwipeView.java"


# instance fields
.field finalAnimatorSet:Landroid/animation/AnimatorSet;

.field hidingAnimator:Landroid/animation/ObjectAnimator;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFinalTranslate:F

.field movingAnimator:Landroid/animation/ObjectAnimator;

.field scaleAnimator:Landroid/animation/ObjectAnimator;

.field showingAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->init()V

    return-void
.end method

.method private createFinalAnimSet(I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private createHidingAnimator(I)V
    .locals 6

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string/jumbo v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createMovingAnimator(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    add-int/lit16 v2, v2, -0x3e8

    int-to-float v1, v2

    const-string/jumbo v2, "translationY"

    new-array v3, v6, [F

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v1, v2, v3

    const-string/jumbo v2, "translationX"

    new-array v3, v6, [F

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    sub-float v1, v2, v3

    const-string/jumbo v2, "translationX"

    new-array v3, v6, [F

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createScaleAnimator(I)V
    .locals 6

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string/jumbo v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method private createShowingAnimator(I)V
    .locals 6

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string/jumbo v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d003f

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setAlpha(F)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method prepare(I)V
    .locals 5

    const v4, 0x7f070121

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setAlpha(F)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setVisibility(I)V

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v3, v0

    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method startAnimation(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createShowingAnimator(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createMovingAnimator(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createScaleAnimator(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createHidingAnimator(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createFinalAnimSet(I)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

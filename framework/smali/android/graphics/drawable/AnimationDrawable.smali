.class public Landroid/graphics/drawable/AnimationDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

.field private mCurFrame:I

.field private mMutated:Z

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    iput v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    if-eqz p1, :cond_14

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_14
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    :cond_9
    :goto_9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v9, :cond_9d

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v4, :cond_18

    const/4 v6, 0x3

    if-eq v5, v6, :cond_9d

    :cond_18
    if-ne v5, v10, :cond_9

    if-gt v1, v4, :cond_9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_9

    sget-object v6, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, -0x1

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-gez v3, :cond_56

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": <item> tag requires a \'duration\' attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_56
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_91

    :cond_5f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5f

    if-eq v5, v10, :cond_8d

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": <item> tag requires a \'drawable\' attribute or child tag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8d
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_91
    iget-object v6, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eqz v2, :cond_9

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_9

    :cond_9d
    return-void
.end method

.method private nextFrame(Z)V
    .registers 6

    iget v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    add-int/lit8 v1, v3, 0x1

    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_28

    const/4 v0, 0x1

    :goto_17
    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v3

    if-nez v3, :cond_22

    if-lt v1, v2, :cond_22

    const/4 v1, 0x0

    :cond_22
    xor-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v1, p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private setFrame(IZZ)V
    .registers 8

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    return-void

    :cond_9
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    if-nez p2, :cond_14

    if-eqz p3, :cond_17

    :cond_14
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_17
    if-eqz p3, :cond_2f

    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v2

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_2f
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-boolean v1, v1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-set0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_e
    return-void
.end method

.method public clearMutated()V
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    move-result-object v0

    return-object v0
.end method

.method public getDuration(I)I
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getFrame(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFrames()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, v2}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->updateDensity(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimationDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void
.end method

.method public isOneShot()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-wrap0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    :cond_12
    return-object p0
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->nextFrame(Z)V

    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iput-object p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    :cond_b
    return-void
.end method

.method public setOneShot(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-set0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer;->setVisible(ZZ)Z

    move-result v0

    if-eqz p1, :cond_36

    if-nez p2, :cond_a

    if-eqz v0, :cond_2e

    :cond_a
    if-nez p2, :cond_2f

    iget-boolean v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-nez v2, :cond_1a

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2f

    :cond_1a
    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_31

    const/4 v1, 0x1

    :goto_25
    if-eqz v1, :cond_33

    const/4 v2, 0x0

    :goto_28
    iget-boolean v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    const/4 v1, 0x1

    goto :goto_25

    :cond_31
    const/4 v1, 0x0

    goto :goto_25

    :cond_33
    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    goto :goto_28

    :cond_36
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_2e
.end method

.method public start()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v1

    if-gt v1, v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->-get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1a
    invoke-direct {p0, v2, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_1d
    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    iput v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

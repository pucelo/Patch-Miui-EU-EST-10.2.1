.class public abstract Lmiui/maml/elements/AnimatedScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field private static final sHoverPaintColor:I = -0x7f000100

.field private static final sPaintColor:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lmiui/maml/data/IndexedVariable;

.field private mActualYVar:Lmiui/maml/data/IndexedVariable;

.field protected mAlpha:I

.field private mAlphaExpression:Lmiui/maml/data/Expression;

.field private mAlphas:Lmiui/maml/animation/AlphaAnimation;

.field private mBaseXExpression:Lmiui/maml/data/Expression;

.field private mBaseYExpression:Lmiui/maml/data/Expression;

.field private mCamera:Landroid/graphics/Camera;

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lmiui/maml/data/Expression;

.field protected mHasContentDescription:Z

.field private mHeightExpression:Lmiui/maml/data/Expression;

.field private mHoverPaint:Landroid/graphics/Paint;

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mPivotXExpression:Lmiui/maml/data/Expression;

.field private mPivotYExpression:Lmiui/maml/data/Expression;

.field private mPivotZ:Lmiui/maml/data/Expression;

.field private mPositions:Lmiui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field private mRotationExpression:Lmiui/maml/data/Expression;

.field private mRotationX:Lmiui/maml/data/Expression;

.field private mRotationY:Lmiui/maml/data/Expression;

.field private mRotationZ:Lmiui/maml/data/Expression;

.field private mRotations:Lmiui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lmiui/maml/data/Expression;

.field private mScaleXExpression:Lmiui/maml/data/Expression;

.field private mScaleYExpression:Lmiui/maml/data/Expression;

.field private mScales:Lmiui/maml/animation/ScaleAnimation;

.field private mSizes:Lmiui/maml/animation/SizeAnimation;

.field protected mTouchable:Z

.field private mWidthExpression:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->addAccessibleElements(Lmiui/maml/elements/AnimatedScreenElement;)V

    :cond_26
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const v1, -0x4c06f6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    const v1, -0x7f000100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .registers 7

    invoke-virtual {p0, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, p2, p4}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private handleCancel()V
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    const-string/jumbo v0, "cancel"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    :cond_15
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v2, "x"

    const-string/jumbo v3, "left"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "top"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "w"

    const-string/jumbo v3, "width"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "h"

    const-string/jumbo v3, "height"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "angle"

    const-string/jumbo v3, "rotation"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "centerX"

    const-string/jumbo v3, "pivotX"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "centerY"

    const-string/jumbo v3, "pivotY"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "alpha"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "scale"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "scaleX"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "scaleY"

    invoke-direct {p0, v0, p1, v2, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "angleX"

    const-string/jumbo v3, "rotationX"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "angleY"

    const-string/jumbo v3, "rotationY"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "angleZ"

    const-string/jumbo v3, "rotationZ"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    const-string/jumbo v2, "centerZ"

    const-string/jumbo v3, "pivotZ"

    invoke-direct {p0, v0, p1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    iget-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v2, :cond_fe

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "actual_x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "actual_y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    :cond_fe
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-nez v2, :cond_106

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_17d

    :cond_106
    :goto_106
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    :cond_10d
    const-string/jumbo v2, "touchable"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    const-string/jumbo v2, "interceptTouch"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    const-string/jumbo v2, "haptic"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    const-string/jumbo v2, "contentDescription"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    const-string/jumbo v2, "contentDescriptionExp"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_156

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_182

    :cond_156
    :goto_156
    iput-boolean v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    const-string/jumbo v1, "marginLeft"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    const-string/jumbo v1, "marginRight"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    const-string/jumbo v1, "marginTop"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    const-string/jumbo v1, "marginBottom"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    return-void

    :cond_17d
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_10d

    goto :goto_106

    :cond_182
    const/4 v1, 0x0

    goto :goto_156
.end method


# virtual methods
.method protected doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .registers 26

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-eqz v2, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationY()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    move-result v14

    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_157

    :cond_2e
    :goto_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v12, v13, v14}, Landroid/graphics/Camera;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    const/4 v7, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v7, v0, v1}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v11

    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_7a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v17

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v16, v2

    if-nez v2, :cond_8e

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_99

    :cond_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_99
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v7

    sub-float v7, v19, v7

    sub-float v9, v2, v7

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v7

    sub-float v7, v20, v7

    sub-float v10, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v7, v9

    neg-float v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    add-float v7, v9, v19

    add-float v21, v10, v20

    move/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-boolean v2, v2, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    if-eqz v2, :cond_116

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_116

    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_116

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v4

    add-float v5, v3, v18

    add-float v6, v4, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_116
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;

    move-result-object v2

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_151

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-lez v2, :cond_151

    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_151

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v4

    add-float v5, v3, v18

    add-float v6, v4, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_151
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_157
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_6a

    goto/16 :goto_2e
.end method

.method protected doTick(J)V
    .registers 8

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    iget-boolean v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_24
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    if-gez v1, :cond_31

    :goto_2e
    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return-void

    :cond_31
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    goto :goto_2e
.end method

.method protected evaluateAlpha()I
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    :goto_b
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    :goto_15
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v2, v2, Lmiui/maml/elements/LayerScreenElement;

    if-nez v2, :cond_31

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v2, v2, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->isLayered()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_31
    :goto_31
    return v0

    :cond_32
    const/16 v0, 0xff

    goto :goto_b

    :cond_35
    const/16 v1, 0xff

    goto :goto_15

    :cond_38
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v2

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    goto :goto_31
.end method

.method public getAbsoluteLeft()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_9
    add-float/2addr v0, v1

    return v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_9
.end method

.method public getAbsoluteTop()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_9
    add-float/2addr v0, v1

    return v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_9
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getHeightRaw()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_c
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_16
    double-to-float v0, v0

    return v0

    :cond_18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_16
.end method

.method protected getLeft()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public final getMarginBottom()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginLeft()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginRight()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginTop()F
    .registers 3

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getMaxHeight()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxHeight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_19
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0

    :cond_1e
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_19
.end method

.method protected getMaxWidth()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxWidth()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_19
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0

    :cond_1e
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_19
.end method

.method protected getPivotX()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotXRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotXRaw()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    double-to-float v0, v0

    return v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method protected getPivotY()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotYRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotYRaw()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    double-to-float v0, v0

    return v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method protected getRotation()F
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    if-eqz v2, :cond_1a

    double-to-float v2, v0

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    invoke-virtual {v3}, Lmiui/maml/animation/RotationAnimation;->getAngle()F

    move-result v3

    add-float/2addr v2, v3

    return v2

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_1a
    double-to-float v2, v0

    return v2
.end method

.method protected getRotationX()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    double-to-float v0, v0

    return v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method protected getRotationY()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    double-to-float v0, v0

    return v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method protected getRotationZ()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    double-to-float v0, v0

    return v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method protected getScaleX()F
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/ScaleAnimation;->getScaleX()D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    :cond_17
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_a

    :cond_22
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a

    :cond_25
    double-to-float v2, v0

    return v2
.end method

.method protected getScaleY()F
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/ScaleAnimation;->getScaleY()D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    :cond_17
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_a

    :cond_22
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a

    :cond_25
    double-to-float v2, v0

    return v2
.end method

.method protected getTop()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getWidthRaw()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_c
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_16
    double-to-float v0, v0

    return v0

    :cond_18
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_16
.end method

.method protected getX()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getXRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getXRaw()F
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_15
    double-to-float v2, v0

    return v2

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method protected getY()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getYRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getYRaw()F
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_15
    double-to-float v2, v0

    return v2

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    return-void
.end method

.method protected onActionCancel()V
    .registers 1

    return-void
.end method

.method protected onActionDown(FF)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v1, "down"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionMove(FF)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v1, "move"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionUp()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .registers 4

    const-string/jumbo v0, "AlphaAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lmiui/maml/animation/AlphaAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    return-object v0

    :cond_11
    const-string/jumbo v0, "PositionAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lmiui/maml/animation/PositionAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    return-object v0

    :cond_22
    const-string/jumbo v0, "RotationAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lmiui/maml/animation/RotationAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    return-object v0

    :cond_33
    const-string/jumbo v0, "SizeAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Lmiui/maml/animation/SizeAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    return-object v0

    :cond_44
    const-string/jumbo v0, "ScaleAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Lmiui/maml/animation/ScaleAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    return-object v0

    :cond_55
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    :cond_d
    return v4

    :cond_e
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_52

    :cond_25
    :goto_25
    :pswitch_25
    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_2a
    if-eqz v1, :cond_2e

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    :cond_2e
    return v4

    :pswitch_2f
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_25

    :pswitch_3c
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;

    move-result-object v5

    if-eq v5, p0, :cond_4f

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    :cond_4f
    const/4 v1, 0x1

    goto :goto_25

    nop

    :pswitch_data_52
    .packed-switch 0x7
        :pswitch_3c
        :pswitch_25
        :pswitch_2f
        :pswitch_25
    .end packed-switch
.end method

.method protected onSetAnimBefore()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .registers 3

    instance-of v0, p1, Lmiui/maml/animation/AlphaAnimation;

    if-eqz v0, :cond_9

    check-cast p1, Lmiui/maml/animation/AlphaAnimation;

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    :cond_8
    :goto_8
    return-void

    :cond_9
    instance-of v0, p1, Lmiui/maml/animation/PositionAnimation;

    if-eqz v0, :cond_12

    check-cast p1, Lmiui/maml/animation/PositionAnimation;

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    goto :goto_8

    :cond_12
    instance-of v0, p1, Lmiui/maml/animation/RotationAnimation;

    if-eqz v0, :cond_1b

    check-cast p1, Lmiui/maml/animation/RotationAnimation;

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    goto :goto_8

    :cond_1b
    instance-of v0, p1, Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_24

    check-cast p1, Lmiui/maml/animation/SizeAnimation;

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    goto :goto_8

    :cond_24
    instance-of v0, p1, Lmiui/maml/animation/ScaleAnimation;

    if-eqz v0, :cond_8

    check-cast p1, Lmiui/maml/animation/ScaleAnimation;

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    goto :goto_8
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    :cond_e
    return v3

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_88

    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_27
    if-eqz v0, :cond_2b

    iget-boolean v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    :cond_2b
    return v3

    :pswitch_2c
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_22

    iput-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v5}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_3d
    const-string/jumbo v4, "down"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    const/4 v0, 0x1

    goto :goto_22

    :pswitch_48
    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v4, :cond_22

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v0

    const-string/jumbo v4, "move"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    goto :goto_22

    :pswitch_5a
    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v4, :cond_22

    iput-boolean v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_7a

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v5}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_6f
    const-string/jumbo v4, "up"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionUp()V

    :goto_78
    const/4 v0, 0x1

    goto :goto_22

    :cond_7a
    const-string/jumbo v4, "cancel"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    goto :goto_78

    :pswitch_84
    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    goto :goto_22

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_5a
        :pswitch_48
        :pswitch_84
    .end packed-switch
.end method

.method protected onVisibilityChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-nez p1, :cond_8

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    :cond_8
    return-void
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setH(D)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_15
    return-void

    :cond_16
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    goto :goto_15
.end method

.method public setW(D)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_15
    return-void

    :cond_16
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    goto :goto_15
.end method

.method public setX(D)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_15
    return-void

    :cond_16
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    goto :goto_15
.end method

.method public setY(D)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    :goto_15
    return-void

    :cond_16
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    goto :goto_15
.end method

.method public touched(FF)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result v0

    return v0
.end method

.method public touched(FFZ)Z
    .registers 12

    const/4 v6, 0x0

    if-eqz p3, :cond_f

    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v7, :cond_35

    const/4 v2, 0x0

    :goto_8
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v7, :cond_3c

    const/4 v3, 0x0

    :goto_d
    sub-float/2addr p1, v2

    sub-float/2addr p2, v3

    :cond_f
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v5

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    cmpl-float v7, p1, v1

    if-ltz v7, :cond_34

    add-float v7, v1, v5

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_34

    cmpl-float v7, p2, v4

    if-ltz v7, :cond_34

    add-float v7, v4, v0

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_34

    const/4 v6, 0x1

    :cond_34
    return v6

    :cond_35
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v2

    goto :goto_8

    :cond_3c
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v3

    goto :goto_d
.end method

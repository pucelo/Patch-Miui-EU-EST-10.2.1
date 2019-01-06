.class public Lmiui/maml/elements/ArcScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "ArcScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Arc"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lmiui/maml/data/Expression;

.field private mArcPath:Landroid/graphics/Path;

.field private mClose:Z

.field mOvalRect:Landroid/graphics/RectF;

.field private mSweep:F

.field private mSweepExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "startAngle"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngleExp:Lmiui/maml/data/Expression;

    const-string/jumbo v1, "sweep"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweepExp:Lmiui/maml/data/Expression;

    const-string/jumbo v1, "close"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .registers 8

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;->doTick(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngleExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngle:F

    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweepExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 12

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->getHeight()F

    move-result v0

    div-float v4, v3, v6

    sub-float v1, v5, v4

    div-float v4, v0, v6

    sub-float v2, v5, v4

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iput v1, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iput v2, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    add-float v5, v1, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    add-float v5, v2, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_40

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_3f
    return-void

    :cond_40
    iget-boolean v4, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    if-eqz v4, :cond_55

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_55
    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iget v6, p0, Lmiui/maml/elements/ArcScreenElement;->mAngle:F

    iget v7, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    iget-boolean v8, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-boolean v4, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    :cond_6d
    iget-object v4, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3f
.end method

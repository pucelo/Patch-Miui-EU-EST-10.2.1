.class public Lmiui/maml/elements/EllipseScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "EllipseScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Ellipse"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    sget-object v0, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lmiui/maml/elements/EllipseScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    sget-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lmiui/maml/elements/EllipseScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 10

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getHeight()F

    move-result v0

    cmpg-float v4, v3, v5

    if-ltz v4, :cond_13

    cmpg-float v4, v0, v5

    if-gez v4, :cond_14

    :cond_13
    return-void

    :cond_14
    sget-object v4, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v4, :cond_35

    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v3, v4

    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v0, v4

    :cond_1e
    div-float v4, v3, v6

    sub-float v1, v5, v4

    div-float v4, v0, v6

    sub-float v2, v5, v4

    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v1, v3

    add-float v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lmiui/maml/elements/EllipseScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_35
    sget-object v4, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v4, :cond_1e

    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v3, v4

    iget v4, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v0, v4

    cmpg-float v4, v3, v5

    if-ltz v4, :cond_47

    cmpg-float v4, v0, v5

    if-gez v4, :cond_1e

    :cond_47
    return-void
.end method

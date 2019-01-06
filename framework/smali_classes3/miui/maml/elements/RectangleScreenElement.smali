.class public Lmiui/maml/elements/RectangleScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "RectangleScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RectangleScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Rectangle"


# instance fields
.field private mCornerRadiusX:F

.field private mCornerRadiusY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/RectangleScreenElement;->resolveCornerRadius(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private resolveCornerRadius(Lorg/w3c/dom/Element;)V
    .registers 8

    const/4 v4, 0x1

    const-string/jumbo v3, "cornerRadius"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/RectangleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :try_start_f
    array-length v3, v1

    if-ge v3, v4, :cond_13

    return-void

    :cond_13
    array-length v3, v1

    if-ne v3, v4, :cond_27

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    :goto_26
    return-void

    :cond_27
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/RectangleScreenElement;->scale(D)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_43} :catch_44

    goto :goto_26

    :catch_44
    move-exception v0

    const-string/jumbo v3, "RectangleScreenElement"

    const-string/jumbo v4, "illegal number format of cornerRadius."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 13

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/RectangleScreenElement;->getWidth()F

    move-result v7

    invoke-virtual {p0}, Lmiui/maml/elements/RectangleScreenElement;->getHeight()F

    move-result v6

    invoke-virtual {p0, v0, v7}, Lmiui/maml/elements/RectangleScreenElement;->getLeft(FF)F

    move-result v1

    invoke-virtual {p0, v0, v6}, Lmiui/maml/elements/RectangleScreenElement;->getTop(FF)F

    move-result v2

    cmpl-float v5, v7, v0

    if-lez v5, :cond_46

    :goto_17
    add-float v3, v1, v7

    cmpl-float v5, v6, v0

    if-lez v5, :cond_48

    :goto_1d
    add-float v4, v2, v6

    sget-object v5, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v5, :cond_4a

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v1, v5

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v2, v5

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v3, v5

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    :cond_33
    :goto_33
    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    cmpg-float v5, v5, v0

    if-lez v5, :cond_3f

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_5f

    :cond_3f
    iget-object v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_45
    return-void

    :cond_46
    move v7, v0

    goto :goto_17

    :cond_48
    move v6, v0

    goto :goto_1d

    :cond_4a
    sget-object v5, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v5, :cond_33

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v1, v5

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    add-float/2addr v2, v5

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mWeight:F

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    goto :goto_33

    :cond_5f
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v5, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    iget v8, p0, Lmiui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    iget-object v9, p0, Lmiui/maml/elements/RectangleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_45
.end method

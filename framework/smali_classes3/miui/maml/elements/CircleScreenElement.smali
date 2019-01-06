.class public Lmiui/maml/elements/CircleScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "CircleScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Circle"


# instance fields
.field private mRadiusExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/CircleScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    sget-object v0, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    sget-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lmiui/maml/elements/CircleScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    return-void
.end method

.method private final getRadius()F
    .registers 5

    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mRadiusExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v0, v2

    :goto_b
    float-to-double v2, v0

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/CircleScreenElement;->scale(D)F

    move-result v1

    return v1

    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 7

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Lmiui/maml/elements/CircleScreenElement;->getRadius()F

    move-result v0

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_15

    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    :cond_f
    :goto_f
    iget-object v1, p0, Lmiui/maml/elements/CircleScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_15
    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v1, :cond_f

    iget v1, p0, Lmiui/maml/elements/CircleScreenElement;->mWeight:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_f
.end method

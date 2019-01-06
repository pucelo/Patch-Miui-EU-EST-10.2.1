.class public abstract Lmiui/maml/shader/ShaderElement;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/shader/ShaderElement$GradientStop;,
        Lmiui/maml/shader/ShaderElement$GradientStops;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShaderElement"


# instance fields
.field protected mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mShader:Landroid/graphics/Shader;

.field protected mShaderMatrix:Landroid/graphics/Matrix;

.field protected mTileMode:Landroid/graphics/Shader$TileMode;

.field protected mX:F

.field protected mXExp:Lmiui/maml/data/Expression;

.field protected mY:F

.field protected mYExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    new-instance v1, Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-direct {v1, p0}, Lmiui/maml/shader/ShaderElement$GradientStops;-><init>(Lmiui/maml/shader/ShaderElement;)V

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    iput-object p2, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mXExp:Lmiui/maml/data/Expression;

    const-string/jumbo v1, "y"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mYExp:Lmiui/maml/data/Expression;

    const-string/jumbo v1, "tile"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/shader/ShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BitmapShader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;->loadGradientStops(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    :cond_4e
    return-void
.end method

.method public static getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    :cond_9
    const-string/jumbo v0, "mirror"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    :cond_15
    const-string/jumbo v0, "repeat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    :cond_21
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method private loadGradientStops(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 8

    const-string/jumbo v3, "GradientStop"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_21

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    new-instance v4, Lmiui/maml/shader/ShaderElement$GradientStop;

    invoke-direct {v4, p0, v0, p2}, Lmiui/maml/shader/ShaderElement$GradientStop;-><init>(Lmiui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Lmiui/maml/shader/ShaderElement$GradientStops;->add(Lmiui/maml/shader/ShaderElement$GradientStop;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_21
    iget-object v3, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v3}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v3

    if-gtz v3, :cond_33

    const-string/jumbo v3, "ShaderElement"

    const-string/jumbo v4, "lost gradient stop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    iget-object v3, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v3}, Lmiui/maml/shader/ShaderElement$GradientStops;->init()V

    return-void
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method protected getVariables()Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .registers 5

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mXExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mXExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getY()F
    .registers 5

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mYExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mYExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_a
    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public abstract onGradientStopsChanged()V
.end method

.method public updateShader()V
    .registers 4

    iget-object v1, p0, Lmiui/maml/shader/ShaderElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lmiui/maml/shader/ShaderElement$GradientStops;->update()V

    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement;->updateShaderMatrix()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lmiui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_12
    return-void
.end method

.method public abstract updateShaderMatrix()Z
.end method

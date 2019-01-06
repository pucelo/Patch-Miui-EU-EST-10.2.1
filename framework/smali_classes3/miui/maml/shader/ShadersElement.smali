.class public final Lmiui/maml/shader/ShadersElement;
.super Ljava/lang/Object;
.source "ShadersElement.java"


# static fields
.field public static final FILL_TAG_NAME:Ljava/lang/String; = "FillShaders"

.field public static final STROKE_TAG_NAME:Ljava/lang/String; = "StrokeShaders"


# instance fields
.field private mShaderElement:Lmiui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShadersElement;->loadShaderElements(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private loadShaderElements(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 10

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v2, 0x0

    :goto_5
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_34

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "LinearGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    new-instance v5, Lmiui/maml/shader/LinearGradientElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/LinearGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    :cond_30
    :goto_30
    iget-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v5, :cond_16

    :cond_34
    return-void

    :cond_35
    const-string/jumbo v5, "RadialGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    new-instance v5, Lmiui/maml/shader/RadialGradientElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/RadialGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_30

    :cond_46
    const-string/jumbo v5, "SweepGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    new-instance v5, Lmiui/maml/shader/SweepGradientElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/SweepGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_30

    :cond_57
    const-string/jumbo v5, "BitmapShader"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    new-instance v5, Lmiui/maml/shader/BitmapShaderElement;

    invoke-direct {v5, v1, p2}, Lmiui/maml/shader/BitmapShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_30
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public updateShader()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement;->updateShader()V

    :cond_9
    return-void
.end method

.class public Lmiui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    .registers 9

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    :try_start_5
    const-string/jumbo v2, "Image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_14
    const-string/jumbo v2, "Time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Lmiui/maml/elements/TimepanelScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_23
    const-string/jumbo v2, "ImageNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string/jumbo v2, "ImageChars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_35
    new-instance v2, Lmiui/maml/elements/ImageNumberScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_3b
    const-string/jumbo v2, "Text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    new-instance v2, Lmiui/maml/elements/TextScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_4a
    const-string/jumbo v2, "DateTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v2, Lmiui/maml/elements/DateTimeScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_59
    const-string/jumbo v2, "Button"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    new-instance v2, Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_68
    const-string/jumbo v2, "MusicControl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    new-instance v2, Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_77
    const-string/jumbo v2, "ElementGroup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    const-string/jumbo v2, "Group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    :cond_89
    new-instance v2, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_8f
    const-string/jumbo v2, "Var"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    new-instance v2, Lmiui/maml/elements/VariableElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_9e
    const-string/jumbo v2, "VarArray"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    new-instance v2, Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_ad
    const-string/jumbo v2, "SpectrumVisualizer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bc

    new-instance v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_bc
    const-string/jumbo v2, "Slider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    new-instance v2, Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_cb
    const-string/jumbo v2, "FramerateController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    new-instance v2, Lmiui/maml/elements/FramerateController;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_da
    const-string/jumbo v2, "VirtualScreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e9

    new-instance v2, Lmiui/maml/elements/VirtualScreen;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_e9
    const-string/jumbo v2, "Line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f8

    new-instance v2, Lmiui/maml/elements/LineScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_f8
    const-string/jumbo v2, "Rectangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    new-instance v2, Lmiui/maml/elements/RectangleScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_107
    const-string/jumbo v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_116

    new-instance v2, Lmiui/maml/elements/EllipseScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_116
    const-string/jumbo v2, "Circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_125

    new-instance v2, Lmiui/maml/elements/CircleScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_125
    const-string/jumbo v2, "Arc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_134

    new-instance v2, Lmiui/maml/elements/ArcScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_134
    const-string/jumbo v2, "Curve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_143

    new-instance v2, Lmiui/maml/elements/CurveScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_143
    const-string/jumbo v2, "List"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_152

    new-instance v2, Lmiui/maml/elements/ListScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_152
    const-string/jumbo v2, "Paint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_161

    new-instance v2, Lmiui/maml/elements/PaintScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_161
    const-string/jumbo v2, "Mirror"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_170

    new-instance v2, Lmiui/maml/elements/MirrorScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_170
    const-string/jumbo v2, "Window"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17f

    new-instance v2, Lmiui/maml/elements/WindowScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_17f
    const-string/jumbo v2, "Array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18e

    new-instance v2, Lmiui/maml/elements/ScreenElementArray;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_18e
    const-string/jumbo v2, "WebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19d

    new-instance v2, Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_19d
    const-string/jumbo v2, "Layer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    new-instance v2, Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_1ac
    const-string/jumbo v2, "GLLayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    new-instance v2, Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_1bb
    const-string/jumbo v2, "CanvasDrawer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    new-instance v2, Lmiui/maml/elements/CanvasDrawerElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_1ca
    iget-object v2, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    if-eqz v2, :cond_1f3

    iget-object v2, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    invoke-interface {v2, p1, p2}, Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    :try_end_1d3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_1d3} :catch_1d5

    move-result-object v2

    return-object v2

    :catch_1d5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string/jumbo v2, "ScreenElementFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to create element."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f3
    return-object v5
.end method

.method public getCallback()Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-object v0
.end method

.method public setCallback(Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-void
.end method

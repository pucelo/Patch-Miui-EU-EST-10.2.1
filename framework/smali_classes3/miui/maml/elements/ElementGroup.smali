.class public Lmiui/maml/elements/ElementGroup;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-ElementGroup$LinearDirectionSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mHovered:Z

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private static synthetic -getmiui-maml-elements-ElementGroup$LinearDirectionSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/elements/ElementGroup;->-miui-maml-elements-ElementGroup$LinearDirectionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/elements/ElementGroup;->-miui-maml-elements-ElementGroup$LinearDirectionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/elements/ElementGroup$LinearDirection;->values()[Lmiui/maml/elements/ElementGroup$LinearDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/elements/ElementGroup;->-miui-maml-elements-ElementGroup$LinearDirectionSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method private constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-direct {p0, p1}, Lmiui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static createArrayGroup(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)Lmiui/maml/elements/ElementGroup;
    .registers 3

    new-instance v0, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/ElementGroup;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V

    return-object v0
.end method

.method public static isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z
    .registers 2

    instance-of v0, p0, Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_b

    check-cast p0, Lmiui/maml/elements/ElementGroup;

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isArray()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v5, "clip"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    const-string/jumbo v5, "layered"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    const-string/jumbo v5, "linear"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    :cond_31
    :goto_31
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v0, :cond_65

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_54

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_57
    const-string/jumbo v5, "v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    goto :goto_31

    :cond_65
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 13

    const/4 v10, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getWidth()F

    move-result v9

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v7

    invoke-virtual {p0, v10, v9}, Lmiui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v1

    invoke-virtual {p0, v10, v7}, Lmiui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v2

    const/4 v8, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v0, :cond_46

    cmpl-float v0, v9, v10

    if-lez v0, :cond_46

    cmpl-float v0, v7, v10

    if-lez v0, :cond_46

    add-float v3, v1, v9

    add-float v4, v2, v7

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v5

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v8

    :goto_2d
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    cmpl-float v0, v9, v10

    if-lez v0, :cond_3f

    cmpl-float v0, v7, v10

    if-lez v0, :cond_3f

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v0, :cond_3f

    invoke-virtual {p1, v10, v10, v9, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_3f
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    goto :goto_2d
.end method

.method protected doRenderChildren(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_21

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_1b
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method protected doTick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTickChildren(J)V

    return-void
.end method

.method protected doTickChildren(J)V
    .registers 16

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v0, :cond_7f

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v5

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_1d
    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    sget-object v9, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    if-eq v8, v9, :cond_42

    instance-of v8, v3, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v8, :cond_42

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_42

    move-object v1, v3

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-static {}, Lmiui/maml/elements/ElementGroup;->-getmiui-maml-elements-ElementGroup$LinearDirectionSwitchesValues()[I

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_c2

    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :pswitch_45
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    move-result v8

    add-float/2addr v2, v8

    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setX(D)V

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    cmpg-float v8, v6, v4

    if-gez v8, :cond_42

    move v6, v4

    goto :goto_42

    :pswitch_62
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    move-result v8

    add-float/2addr v2, v8

    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v7

    cmpg-float v8, v6, v7

    if-gez v8, :cond_42

    move v6, v7

    goto :goto_42

    :cond_7f
    invoke-static {}, Lmiui/maml/elements/ElementGroup;->-getmiui-maml-elements-ElementGroup$LinearDirectionSwitchesValues()[I

    move-result-object v8

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_ca

    :goto_8e
    return-void

    :pswitch_8f
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    goto :goto_8e

    :pswitch_a8
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    goto :goto_8e

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_45
        :pswitch_62
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_a8
    .end packed-switch
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_23

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v1, :cond_20

    return-object v1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_23
    return-object v4
.end method

.method public finish()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_29

    :try_start_c
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->finish()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_1a

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catch_1a
    move-exception v1

    const-string/jumbo v3, "MAML_ElementGroup"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    :cond_29
    return-void
.end method

.method public getChild(I)Lmiui/maml/elements/ScreenElement;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    return-object v0

    :cond_c
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    return-object v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParentLeft()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_9
    add-float/2addr v0, v1

    return v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_9
.end method

.method protected getParentTop()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_9
    add-float/2addr v0, v1

    return v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_9
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 7

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_16
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    return-void
.end method

.method public isArray()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLayered()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    return v0
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, v1}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v5

    if-nez v5, :cond_8

    return v7

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v4

    iget-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v5, :cond_26

    xor-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_26

    iget-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    if-nez v5, :cond_21

    return v7

    :cond_21
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_26
    const/4 v3, 0x0

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_2f
    if-ltz v2, :cond_4a

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_43

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_43
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v3, 0x1

    :cond_4a
    if-eqz v3, :cond_55

    const/4 v5, 0x1

    :goto_4d
    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    iget-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    return v5

    :cond_52
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    :cond_55
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_4d
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v7

    if-nez v7, :cond_8

    return v9

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v6

    iget-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v7, :cond_29

    xor-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_29

    iget-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    if-nez v7, :cond_25

    return v9

    :cond_25
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_29
    const/4 v4, 0x0

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->version()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_64

    const/4 v5, 0x1

    :goto_3a
    if-eqz v5, :cond_69

    add-int/lit8 v3, v0, -0x1

    :goto_3e
    if-ltz v3, :cond_59

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v7, :cond_52

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_52
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_66

    const/4 v4, 0x1

    :cond_59
    :goto_59
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    if-eqz v4, :cond_89

    const/4 v7, 0x1

    :goto_5f
    iput-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    iget-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    return v7

    :cond_64
    const/4 v5, 0x0

    goto :goto_3a

    :cond_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_3e

    :cond_69
    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v0, :cond_59

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v7, :cond_7e

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_7e
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_86

    const/4 v4, 0x1

    goto :goto_59

    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_89
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_5f
.end method

.method protected onVisibilityChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public pause()V
    .registers 4

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public pauseAnim(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 20

    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v0, :cond_2c

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, v10

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_16
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_2c
    return-void
.end method

.method public removeAllElements()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public removeElement(Lmiui/maml/elements/ScreenElement;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public reset(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public resume()V
    .registers 4

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public resumeAnim(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setAnim([Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_16
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    return-void
.end method

.method public setClip(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

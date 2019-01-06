.class public abstract Lmiui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElement$Align;,
        Lmiui/maml/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-ScreenElement$AlignSwitchesValues:[I = null

.field private static final synthetic -miui-maml-elements-ScreenElement$AlignVSwitchesValues:[I = null

.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ScreenElement"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lmiui/maml/data/IndexedVariable;

.field private mActualWidthVar:Lmiui/maml/data/IndexedVariable;

.field protected mAlign:Lmiui/maml/elements/ScreenElement$Align;

.field protected mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

.field protected mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mAvailableController:Lmiui/maml/RendererController;

.field protected mCategory:Ljava/lang/String;

.field private mCurFramerate:F

.field private mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mParent:Lmiui/maml/elements/ElementGroup;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mShow:Z

.field protected mStyle:Lmiui/maml/StylesManager$Style;

.field protected mTriggers:Lmiui/maml/CommandTriggers;

.field private mVisibilityExpression:Lmiui/maml/data/Expression;

.field private mVisibilityVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-elements-ScreenElement$AlignSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/elements/ScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/elements/ScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/elements/ScreenElement$Align;->values()[Lmiui/maml/elements/ScreenElement$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/elements/ScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

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

.method private static synthetic -getmiui-maml-elements-ScreenElement$AlignVSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/elements/ScreenElement;->-miui-maml-elements-ScreenElement$AlignVSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/elements/ScreenElement;->-miui-maml-elements-ScreenElement$AlignVSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/elements/ScreenElement$AlignV;->values()[Lmiui/maml/elements/ScreenElement$AlignV;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/elements/ScreenElement;->-miui-maml-elements-ScreenElement$AlignVSwitchesValues:[I

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

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    iput-object p2, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    const-string/jumbo v0, "style"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiui/maml/ScreenElementRoot;->getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    :cond_1d
    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method protected static isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x1

    if-nez p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_a
    invoke-static {p0, p1}, Lmiui/maml/util/Utils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v2, "category"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    const-string/jumbo v2, "visibility"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    :cond_38
    :goto_38
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    const-string/jumbo v2, "align"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "alignH"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_50
    const-string/jumbo v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    :cond_5d
    :goto_5d
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    const-string/jumbo v2, "alignV"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    :cond_75
    :goto_75
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ScreenElement;->loadTriggers(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V

    return-void

    :cond_7c
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_38

    :cond_89
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-static {v2, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    goto :goto_38

    :cond_94
    const-string/jumbo v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_5d

    :cond_a2
    const-string/jumbo v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_5d

    :cond_b0
    const-string/jumbo v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_be

    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_75

    :cond_be
    const-string/jumbo v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_75
.end method

.method private loadAnimations(Lorg/w3c/dom/Element;)V
    .registers 4

    new-instance v0, Lmiui/maml/elements/ScreenElement$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/ScreenElement$1;-><init>(Lmiui/maml/elements/ScreenElement;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method private setVisibilityVar(Z)V
    .registers 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_33

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "visibility"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v2, v3, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/data/IndexedVariable;

    :cond_33
    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/data/IndexedVariable;

    if-eqz p1, :cond_3c

    :goto_37
    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    goto :goto_37
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .registers 2

    invoke-interface {p1, p0}, Lmiui/maml/elements/ScreenElementVisitor;->visit(Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v1

    return-object v1
.end method

.method protected final descale(D)D
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    div-double v0, p1, v0

    return-wide v0
.end method

.method protected abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method protected doTick(J)V
    .registers 6

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected final evaluate(Lmiui/maml/data/Expression;)D
    .registers 4

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    invoke-virtual {p1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_4
.end method

.method protected final evaluateStr(Lmiui/maml/data/Expression;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return-object p0

    :cond_e
    move-object p0, v0

    goto :goto_d
.end method

.method public finish()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->finish()V

    :cond_9
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->finish()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method protected getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {p1, p2, v0}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    return p3
.end method

.method protected getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    return p3
.end method

.method protected getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .registers 10

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    :catch_9
    move-exception v0

    return-wide p3
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected final getFramerate()F
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0}, Lmiui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    goto :goto_5
.end method

.method protected getLeft(FF)F
    .registers 6

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_6

    return p1

    :cond_6
    move v0, p1

    invoke-static {}, Lmiui/maml/elements/ScreenElement;->-getmiui-maml-elements-ScreenElement$AlignSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    :goto_16
    return v0

    :pswitch_17
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float v0, p1, v1

    goto :goto_16

    :pswitch_1e
    sub-float v0, p1, p2

    goto :goto_16

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1e
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNotifierManager()Lmiui/maml/NotifierManager;
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lmiui/maml/elements/ElementGroup;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    return-object v0
.end method

.method public getRendererController()Lmiui/maml/RendererController;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getTop(FF)F
    .registers 6

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_6

    return p1

    :cond_6
    move v0, p1

    invoke-static {}, Lmiui/maml/elements/ScreenElement;->-getmiui-maml-elements-ScreenElement$AlignVSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    :goto_16
    return v0

    :pswitch_17
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float v0, p1, v1

    goto :goto_16

    :pswitch_1e
    sub-float v0, p1, p2

    goto :goto_16

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_17
    .end packed-switch
.end method

.method public final getVariables()Lmiui/maml/data/Variables;
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method public init()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->init()V

    :cond_10
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2e

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    const-string/jumbo v2, "init"

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method protected isVisibleInner()Z
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_e

    :cond_8
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_8

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d

    :cond_1c
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    goto :goto_d
.end method

.method protected loadTriggers(Lorg/w3c/dom/Element;)V
    .registers 4

    const-string/jumbo v1, "Triggers"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Lmiui/maml/CommandTriggers;

    invoke-direct {v1, v0, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    :cond_10
    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onSetAnimBefore()V
    .registers 1

    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .registers 2

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChange(Z)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getFramerate()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ScreenElement;->mCurFramerate:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lmiui/maml/elements/ScreenElement;->mCurFramerate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    goto :goto_f
.end method

.method public pause()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->pause()V

    :cond_9
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method public final pauseAnim()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected pauseAnim(J)V
    .registers 6

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public performAction(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    :cond_e
    return-void
.end method

.method public final playAnim()V
    .registers 9

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .registers 20

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v0, :cond_23

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/BaseAnimation;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_23
    return-void
.end method

.method public final playAnim(JJZZ)V
    .registers 18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected final postInMainThread(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postRunnable(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final requestFramerate(F)V
    .registers 4

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_19

    cmpl-float v0, p1, v1

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    :cond_19
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    :cond_22
    return-void
.end method

.method public requestUpdate()V
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/RendererController;->requestUpdate()V

    :cond_9
    return-void
.end method

.method public final reset()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public reset(J)V
    .registers 6

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->resume()V

    :cond_9
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method public final resumeAnim()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected resumeAnim(J)V
    .registers 6

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected final scale(D)F
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method protected setActualHeight(D)V
    .registers 8

    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/data/IndexedVariable;

    if-nez v0, :cond_32

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "actual_h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/data/IndexedVariable;

    :cond_32
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method protected setActualWidth(D)V
    .registers 8

    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/data/IndexedVariable;

    if-nez v0, :cond_32

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "actual_w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/data/IndexedVariable;

    :cond_32
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 7

    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v4, :cond_2d

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->onSetAnimBefore()V

    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_2d

    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v1}, Lmiui/maml/animation/BaseAnimation;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lmiui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Lmiui/maml/animation/BaseAnimation;->setDisable(Z)V

    if-eqz v2, :cond_2a

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ScreenElement;->onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    return-void
.end method

.method public final setAnimations(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    return-void

    :cond_14
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lmiui/maml/elements/ElementGroup;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    return-void
.end method

.method public show(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    :cond_f
    return-void
.end method

.method public tick(J)V
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected updateVisibility()V
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_18

    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    :cond_18
    return-void
.end method

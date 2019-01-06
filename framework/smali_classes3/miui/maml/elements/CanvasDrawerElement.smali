.class public Lmiui/maml/elements/CanvasDrawerElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "CanvasDrawerElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "CanvasDrawer"


# instance fields
.field private mCanvasVar:Lmiui/maml/data/IndexedVariable;

.field private mDrawCommands:Lmiui/maml/CommandTrigger;

.field private mHVar:Lmiui/maml/data/IndexedVariable;

.field private mWVar:Lmiui/maml/data/IndexedVariable;

.field private mXVar:Lmiui/maml/data/IndexedVariable;

.field private mYVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 8

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string/jumbo v2, "draw"

    invoke-virtual {v1, v2}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    :cond_13
    iget-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    if-nez v1, :cond_20

    const-string/jumbo v1, "CanvasDrawer"

    const-string/jumbo v2, "no draw commands."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "__x"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "__y"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mYVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "__w"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "__h"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "__objCanvas"

    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_3d

    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getWidthRaw()F

    move-result v1

    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getHeightRaw()F

    move-result v0

    invoke-virtual {p0, v5, v1}, Lmiui/maml/elements/CanvasDrawerElement;->getLeft(FF)F

    move-result v2

    invoke-virtual {p0, v5, v0}, Lmiui/maml/elements/CanvasDrawerElement;->getTop(FF)F

    move-result v3

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mXVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v2

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mYVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v3

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v6, v0

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v4, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v4, v8}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_3d
    return-void
.end method

.class public Lmiui/maml/elements/ButtonScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mIsAlignChildren:Z

.field private mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lmiui/maml/elements/ElementGroup;

.field private mPressedElements:Lmiui/maml/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "alignChildren"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ButtonScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    const-string/jumbo v0, "listener"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ButtonScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouchable:Z

    return-void
.end method

.method private showNormalElements()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    :cond_14
    return-void
.end method

.method private showPressedElements()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    goto :goto_14
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getLeft()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getTop()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_14
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getParentLeft()F
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getLeft()F

    move-result v0

    :goto_9
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_11

    :goto_d
    add-float/2addr v0, v1

    return v0

    :cond_f
    move v0, v1

    goto :goto_9

    :cond_11
    iget-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    goto :goto_d
.end method

.method protected getParentTop()F
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getTop()F

    move-result v0

    :goto_9
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_11

    :goto_d
    add-float/2addr v0, v1

    return v0

    :cond_f
    move v0, v1

    goto :goto_9

    :cond_11
    iget-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    goto :goto_d
.end method

.method public init()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v2, :cond_1d

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    :try_start_19
    check-cast v1, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1d} :catch_21

    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showNormalElements()V

    return-void

    :catch_21
    move-exception v0

    const-string/jumbo v2, "ButtonScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method protected onActionCancel()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->onActionCancel()V

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->resetState()V

    return-void
.end method

.method protected onActionDown(FF)V
    .registers 15

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->onActionDown(FF)V

    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v8, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v4, v8

    if-gtz v7, :cond_53

    iget v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, p1, v7

    iget v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, p2, v7

    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    mul-int v6, v3, v3

    int-to-float v7, v6

    cmpg-float v7, v2, v7

    if-gez v7, :cond_53

    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v7, :cond_4d

    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v8, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    :cond_4d
    const-string/jumbo v7, "double"

    invoke-virtual {p0, v7}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Ljava/lang/String;)V

    :cond_53
    iput p1, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    iput p2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showPressedElements()V

    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v7, :cond_63

    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->reset()V

    :cond_63
    return-void
.end method

.method protected onActionUp()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->onActionUp()V

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->resetState()V

    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 5

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    return-object v1

    :cond_17
    const-string/jumbo v1, "Pressed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    return-object v1

    :cond_2a
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    return-object v1
.end method

.method protected resetState()V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showNormalElements()V

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->reset()V

    :cond_c
    return-void
.end method

.method public setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    return-void
.end method

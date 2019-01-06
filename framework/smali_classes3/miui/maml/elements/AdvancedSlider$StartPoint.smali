.class Lmiui/maml/elements/AdvancedSlider$StartPoint;
.super Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$elements$AdvancedSlider$State:[I

.field private mAnchorX:F

.field private mAnchorY:F

.field protected mOffsetX:F

.field protected mOffsetY:F

.field public mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private static synthetic -getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$State;->values()[Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 8

    const/4 v3, 0x0

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const-string/jumbo v2, "StartPoint"

    invoke-direct {p0, p1, p2, p3, v2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    const-string/jumbo v2, "anchorX"

    invoke-static {p2, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    const-string/jumbo v2, "anchorY"

    invoke-static {p2, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-static {v2, p2}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->create(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/animation/interpolater/InterpolatorHelper;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string/jumbo v3, "easeTime"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    new-instance v2, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    invoke-direct {v2, p1, v0, v1}, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/animation/interpolater/InterpolatorHelper;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    :cond_3d
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    iget v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->doRender(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doTick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->doTick(J)V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->tick(J)V

    :cond_c
    return-void
.end method

.method public getAnchorX()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getLeft()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getAnchorY()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getTop()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOffsetX()F
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    return v0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->init()V

    :cond_c
    return-void
.end method

.method public moveTo(FF)V
    .registers 3

    iput p1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    iput p2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    return-void
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .registers 5

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mNormalSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_12

    :pswitch_1e
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mPressed:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mPressedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_12

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

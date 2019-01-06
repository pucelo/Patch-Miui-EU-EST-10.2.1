.class public Lmiui/maml/elements/AdvancedSlider;
.super Lmiui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;,
        Lmiui/maml/elements/AdvancedSlider$EndPoint;,
        Lmiui/maml/elements/AdvancedSlider$InterpolatorController;,
        Lmiui/maml/elements/AdvancedSlider$LaunchAction;,
        Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;,
        Lmiui/maml/elements/AdvancedSlider$Position;,
        Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;,
        Lmiui/maml/elements/AdvancedSlider$SliderPoint;,
        Lmiui/maml/elements/AdvancedSlider$SpeedAccController;,
        Lmiui/maml/elements/AdvancedSlider$StartPoint;,
        Lmiui/maml/elements/AdvancedSlider$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsHaptic:Z

.field private mIsKeepStatusAfterLaunch:Z

.field private mMoveDistVar:Lmiui/maml/data/IndexedVariable;

.field private mMoveXVar:Lmiui/maml/data/IndexedVariable;

.field private mMoveYVar:Lmiui/maml/data/IndexedVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

.field private mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

.field private mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

.field private mStartPointPressed:Z

.field private mStateVar:Lmiui/maml/data/IndexedVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/AdvancedSlider;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    return v0
.end method

.method static synthetic -get2(Lmiui/maml/elements/AdvancedSlider;)F
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    return v0
.end method

.method static synthetic -get3(Lmiui/maml/elements/AdvancedSlider;)F
    .registers 2

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    return v0
.end method

.method static synthetic -wrap0(Lmiui/maml/elements/AdvancedSlider;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/elements/AdvancedSlider;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private cancelMoving()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onCancel()V

    return-void
.end method

.method private checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .registers 9

    const/4 v2, 0x0

    iget-wide v4, p1, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v3, v4

    iget-wide v4, p1, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->touched(FFZ)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getState()Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v3

    sget-object v4, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    if-eq v3, v4, :cond_3a

    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eq v0, p2, :cond_21

    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_21

    :cond_35
    iget-object v3, p2, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    :cond_3a
    const/4 v2, 0x1

    :goto_3b
    return v2

    :cond_3c
    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_3b
.end method

.method private checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    .registers 15

    const/4 v10, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    new-instance v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    invoke-direct {v7, p0, v10}, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;)V

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-static {v1, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-wrap0(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;

    move-result-object v5

    invoke-virtual {v1, v5, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F

    move-result v0

    cmpg-float v8, v0, v3

    if-gez v8, :cond_10

    move v3, v0

    move-object v4, v5

    iput-object v1, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    goto :goto_10

    :cond_2d
    const/4 v6, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v8, v3, v8

    if-gez v8, :cond_85

    iget-wide v8, v4, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v8, v8

    iget-wide v10, v4, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v9, v10

    invoke-direct {p0, v8, v9}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    const v8, 0x7effffff

    cmpg-float v8, v3, v8

    if-gez v8, :cond_64

    iget-object v8, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v4, v8}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    :cond_4b
    :goto_4b
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v6, :cond_97

    sget-object v8, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    :goto_51
    invoke-virtual {v9, v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v8, :cond_61

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v6, :cond_9a

    const/4 v8, 0x2

    :goto_5d
    int-to-double v10, v8

    invoke-virtual {v9, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_61
    iput-boolean v6, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    return-object v7

    :cond_64
    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-static {v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_6a

    invoke-direct {p0, v4, v1}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_6a

    iput-object v1, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    goto :goto_4b

    :cond_85
    const-string/jumbo v8, "LockScreen_AdvancedSlider"

    const-string/jumbo v9, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string/jumbo v9, "cancel"

    invoke-virtual {v8, v9}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    return-object v10

    :cond_97
    sget-object v8, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    goto :goto_51

    :cond_9a
    const/4 v8, 0x1

    goto :goto_5d
.end method

.method private doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .registers 5

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string/jumbo v2, "launch"

    invoke-virtual {v1, v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    const-string/jumbo v1, "launch"

    invoke-virtual {p1, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v1, :cond_19

    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    move-result-object v0

    :cond_19
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmiui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    const/4 v3, 0x1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_a8

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "move_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "move_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "move_dist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    :cond_a8
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    :goto_b8
    const-string/jumbo v0, "haptic"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    const-string/jumbo v0, "keepStatusAfterLaunch"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    return-void

    :cond_d3
    new-instance v0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->addPreTicker(Lmiui/maml/elements/ITicker;)V

    goto :goto_b8
.end method

.method private moveStartPoint(FF)V
    .registers 13

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v6

    sub-float/2addr p1, v6

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v6

    sub-float/2addr p2, v6

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6, p1, p2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    iget-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v6, :cond_39

    float-to-double v6, p1

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide v2

    float-to-double v6, p2

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide v4

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_39
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method protected onCancel()V
    .registers 1

    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 6

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StartPoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, p0, p1, v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    return-object v2

    :cond_17
    const-string/jumbo v2, "EndPoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, p0, p1, v2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    if-nez v2, :cond_32

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    :cond_32
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_38
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    return-object v2
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    invoke-interface {v0, p1}, Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    return v0
.end method

.method protected onMove(FF)V
    .registers 3

    return-void
.end method

.method protected onReach(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_a
    return-void
.end method

.method protected onRelease()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_a
    return-void
.end method

.method protected onStart()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->isVisible()Z

    move-result v9

    if-nez v9, :cond_a

    return v8

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteLeft()F

    move-result v9

    sub-float/2addr v5, v9

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteTop()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_12e

    :cond_24
    :goto_24
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2e

    if-eqz v4, :cond_12b

    iget-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mInterceptTouch:Z

    :cond_2e
    :goto_2e
    return v7

    :pswitch_2f
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9, v5, v6, v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->touched(FFZ)Z

    move-result v9

    if-eqz v9, :cond_24

    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v9

    sub-float v9, v5, v9

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v9

    sub-float v9, v6, v9

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_70

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->stopRunning()V

    iget v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    :cond_70
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v10, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    sget-object v9, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v9}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_7d

    :cond_8f
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v9, :cond_9c

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v9, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_9c
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onStart()V

    const/4 v4, 0x1

    goto/16 :goto_24

    :pswitch_a7
    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_24

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    if-eqz v3, :cond_bb

    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->onMove(FF)V

    :goto_b8
    const/4 v4, 0x1

    goto/16 :goto_24

    :cond_bb
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    iput-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    goto :goto_b8

    :pswitch_c8
    const/4 v2, 0x0

    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_24

    const-string/jumbo v9, "LockScreen_AdvancedSlider"

    const-string/jumbo v10, "unlock touch up"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    if-eqz v3, :cond_ea

    iget-boolean v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v9, :cond_fb

    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v9}, Lmiui/maml/elements/AdvancedSlider;->doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v2

    :cond_e6
    :goto_e6
    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    :cond_ea
    iput-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-nez v2, :cond_f5

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    :cond_f5
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    const/4 v4, 0x1

    goto/16 :goto_24

    :cond_fb
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string/jumbo v10, "release"

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v9, :cond_e6

    iget-object v9, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    const-string/jumbo v10, "release"

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    goto :goto_e6

    :pswitch_110
    iget-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_24

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    iput-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    const-string/jumbo v10, "cancel"

    invoke-virtual {v9, v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_24

    :cond_12b
    move v7, v8

    goto/16 :goto_2e

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_c8
        :pswitch_a7
        :pswitch_110
    .end packed-switch
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method protected resetInner()V
    .registers 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    if-eqz v2, :cond_4b

    iput-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, v3, v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    sget-object v2, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_1c

    :cond_2e
    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_46
    iput-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    :cond_4b
    return-void
.end method

.method public setOnLaunchListener(Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    return-void
.end method

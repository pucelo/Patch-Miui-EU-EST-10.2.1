.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarViewTaskSwitchHelper.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mContext:Landroid/content/Context;

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private final mMinFlingVelocity:I

.field private final mScrollTouchSlop:I

.field private final mTaskSwitcherDetector:Landroid/view/GestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private sendToHandyMode(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.action.handymode.changemode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 27

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x19

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getRotation()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    cmpl-float v22, v5, v6

    if-lez v22, :cond_4

    const/16 v22, 0x0

    cmpl-float v22, p3, v22

    if-lez v22, :cond_3

    const/16 v22, 0x1

    :goto_1
    xor-int v22, v22, v12

    if-eqz v22, :cond_4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "force_immersive_nav_bar"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, v6

    cmpl-float v22, v5, v22

    if-lez v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v5, v22

    if-lez v22, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLocationOnScreen()[I

    move-result-object v15

    new-instance v10, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v15, v22

    const/16 v23, 0x1

    aget v23, v15, v23

    const/16 v24, 0x0

    aget v24, v15, v24

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x1

    aget v25, v15, v25

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v18

    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v15

    new-instance v14, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v15, v22

    const/16 v23, 0x1

    aget v23, v15, v23

    const/16 v24, 0x0

    aget v24, v15, v24

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x1

    aget v25, v15, v25

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v15

    new-instance v19, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v15, v22

    const/16 v23, 0x1

    aget v23, v15, v23

    const/16 v24, 0x0

    aget v24, v15, v24

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x1

    aget v25, v15, v25

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_a

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->sendToHandyMode(I)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v10, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    :goto_6
    const/16 v22, 0x1

    return v22

    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_5
    cmpl-float v22, v6, v5

    if-lez v22, :cond_6

    const/16 v22, 0x0

    cmpl-float v22, p4, v22

    if-lez v22, :cond_6

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v18

    goto/16 :goto_5

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->sendToHandyMode(I)V

    invoke-virtual {v7, v10, v14}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_6
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v4, v7, :cond_1

    if-le v4, v6, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v6, v7, :cond_3

    if-le v6, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setBarState(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsRTL:Z

    return-void
.end method

.class public Lcom/android/internal/policy/MiuiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MiuiPhoneWindow.java"


# instance fields
.field private mMenuDownCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 19

    const/16 v2, 0xbb

    move/from16 v0, p2

    if-ne v0, v2, :cond_33

    new-instance v3, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    const/16 v9, 0x52

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    move-object/from16 p3, v3

    :cond_33
    packed-switch p2, :pswitch_data_50

    :goto_36
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :pswitch_3b
    iget v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    if-nez v2, :cond_49

    new-instance p3, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v4, 0x52

    move-object/from16 v0, p3

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    :cond_49
    iget v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    goto :goto_36

    :pswitch_data_50
    .packed-switch 0x52
        :pswitch_3b
    .end packed-switch
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 19

    const/16 v2, 0xbb

    move/from16 v0, p2

    if-ne v0, v2, :cond_33

    new-instance v3, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    const/16 v9, 0x52

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    move-object/from16 p3, v3

    :cond_33
    packed-switch p2, :pswitch_data_4e

    :goto_36
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :pswitch_3b
    iget v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4a

    new-instance p3, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    const/16 v4, 0x52

    move-object/from16 v0, p3

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    :cond_4a
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    goto :goto_36

    :pswitch_data_4e
    .packed-switch 0x52
        :pswitch_3b
    .end packed-switch
.end method

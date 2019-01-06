.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .registers 4

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_17
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .registers 33

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v12, 0xfa

    add-long/2addr v6, v12

    cmp-long v3, v6, v4

    if-gez v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    packed-switch v27, :pswitch_data_17c

    :goto_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string/jumbo v7, "X"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string/jumbo v7, "Y"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    const/4 v9, 0x0

    const/16 v28, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v29, v30

    if-lez v3, :cond_150

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    if-eqz v28, :cond_79

    if-lez v28, :cond_14c

    const/16 v9, 0x16

    :goto_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    :cond_79
    :goto_79
    if-eqz v9, :cond_17a

    if-gez v28, :cond_82

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    :cond_82
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_ab

    add-int/lit8 v28, v28, -0x1

    sub-int v10, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    :cond_ab
    :goto_ab
    if-lez v28, :cond_176

    add-int/lit8 v28, v28, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_ab

    :pswitch_f2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_2e

    :pswitch_11f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_2e

    :cond_14c
    const/16 v9, 0x15

    goto/16 :goto_6b

    :cond_150
    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_79

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    if-eqz v28, :cond_79

    if-lez v28, :cond_173

    const/16 v9, 0x14

    :goto_163
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_79

    :cond_173
    const/16 v9, 0x13

    goto :goto_163

    :cond_176
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    :cond_17a
    return-void

    nop

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_11f
    .end packed-switch
.end method

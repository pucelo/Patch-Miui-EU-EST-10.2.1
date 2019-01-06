.class abstract Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Lmiui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReboundAnimationController"
.end annotation


# instance fields
.field private mBounceStartPointIndex:I

.field private mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field protected mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field protected mTotalDistance:D

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;
    .registers 26

    new-instance v6, Lmiui/maml/util/Utils$Point;

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    invoke-direct {v6, v12, v13, v14, v15}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v7, Lmiui/maml/util/Utils$Point;

    move/from16 v0, p3

    float-to-double v12, v0

    move/from16 v0, p4

    float-to-double v14, v0

    invoke-direct {v7, v12, v13, v14, v15}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v12, 0x1

    invoke-static {v6, v7, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    move-wide/from16 v0, p5

    long-to-double v12, v0

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_24

    const/4 v12, 0x0

    return-object v12

    :cond_24
    move-wide/from16 v0, p5

    long-to-double v12, v0

    sub-double v12, v10, v12

    div-double v8, v12, v10

    iget-wide v12, v7, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->x:D

    sub-double/2addr v12, v14

    mul-double v2, v12, v8

    iget-wide v12, v7, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->y:D

    sub-double/2addr v12, v14

    mul-double v4, v12, v8

    new-instance v12, Lmiui/maml/util/Utils$Point;

    iget-wide v14, v6, Lmiui/maml/util/Utils$Point;->x:D

    add-double/2addr v14, v2

    iget-wide v0, v6, Lmiui/maml/util/Utils$Point;->y:D

    move-wide/from16 v16, v0

    add-double v16, v16, v4

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    return-object v12
.end method


# virtual methods
.method protected abstract getDistance(J)J
.end method

.method public init()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public isRunning()Z
    .registers 5

    iget-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onMove(FF)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->-wrap1(Lmiui/maml/elements/AdvancedSlider;FF)V

    return-void
.end method

.method protected onStart()V
    .registers 1

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->-wrap0(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method public start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V
    .registers 15

    const/4 v12, 0x1

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v7}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v7}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v7

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    const/4 v7, -0x1

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    new-instance v1, Lmiui/maml/util/Utils$Point;

    iget v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    float-to-double v8, v7

    iget v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    float-to-double v10, v7

    invoke-direct {v1, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    if-eqz p1, :cond_ba

    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_ba

    const/4 v0, 0x1

    :goto_50
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a2

    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/AdvancedSlider$Position;

    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/AdvancedSlider$Position;

    new-instance v2, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v7

    float-to-double v10, v7

    invoke-direct {v2, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v3, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v7

    float-to-double v10, v7

    invoke-direct {v3, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v7, 0x0

    invoke-static {v2, v3, v1, v7}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v4

    if-eqz v4, :cond_ae

    add-int/lit8 v7, v0, -0x1

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v2, v4, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    :cond_a2
    :goto_a2
    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_dc

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    return-void

    :cond_ae
    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v2, v3, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_ba
    new-instance v7, Lmiui/maml/util/Utils$Point;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v8}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v8

    float-to-double v8, v8

    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v10}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    invoke-static {v7, v1, v12}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v8

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    goto :goto_a2

    :cond_dc
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStart()V

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    return-void
.end method

.method public stopRunning()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public tick(J)V
    .registers 30

    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_b

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_29

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    :goto_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    return-void

    :cond_29
    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    sub-long v24, p1, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getDistance(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_42

    return-void

    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v5, :cond_52

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_92

    :cond_52
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v21

    if-nez v21, :cond_82

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    :cond_7d
    :goto_7d
    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    goto :goto_21

    :cond_82
    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v5, v6

    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    goto :goto_7d

    :cond_92
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v6}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v6

    add-float v16, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v6}, Lmiui/maml/elements/AdvancedSlider;->-get0(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v6

    add-float v17, v5, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    sub-long v18, v10, v6

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    :goto_d0
    if-ltz v4, :cond_7d

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/maml/elements/AdvancedSlider$Position;

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v14

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v15

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v21

    if-nez v21, :cond_12b

    if-nez v4, :cond_f6

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    goto :goto_7d

    :cond_f6
    new-instance v12, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v5

    float-to-double v8, v5

    invoke-direct {v12, v6, v7, v8, v9}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v20, Lmiui/maml/util/Utils$Point;

    move/from16 v0, v16

    float-to-double v6, v0

    move/from16 v0, v17

    float-to-double v8, v0

    move-object/from16 v0, v20

    invoke-direct {v0, v6, v7, v8, v9}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    move-wide/from16 v0, v18

    long-to-double v6, v0

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-static {v12, v0, v5}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v16

    invoke-virtual/range {v22 .. v22}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v17

    add-int/lit8 v4, v4, -0x1

    goto :goto_d0

    :cond_12b
    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v5, v6

    move-object/from16 v0, v21

    iget-wide v6, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    goto/16 :goto_7d
.end method

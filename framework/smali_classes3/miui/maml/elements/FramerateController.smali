.class public Lmiui/maml/elements/FramerateController;
.super Lmiui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTag:Ljava/lang/String;

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 15

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    const-string/jumbo v5, "loop"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    const-string/jumbo v5, "tag"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "delay"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    :try_start_35
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mDelay:J
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_3b} :catch_5c

    :cond_3b
    :goto_3b
    const-string/jumbo v5, "ControlPoint"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v2, 0x0

    :goto_43
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_67

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v7, Lmiui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v7, v1}, Lmiui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :catch_5c
    move-exception v0

    const-string/jumbo v5, "FramerateController"

    const-string/jumbo v7, "invalid delay attribute"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_67
    iget-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v7, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v8, v5, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    iget-boolean v5, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v5, :cond_8b

    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_8b

    const/4 v5, 0x1

    :goto_88
    iput-boolean v5, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    return-void

    :cond_8b
    move v5, v6

    goto :goto_88
.end method

.method private restart(J)V
    .registers 8

    iget-object v1, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lmiui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->requestUpdate()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .registers 12

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    sub-long v0, p1, p3

    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/maml/elements/FramerateController;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/FramerateController;->show(Z)V

    return-void
.end method

.method public updateFramerate(J)J
    .registers 22

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/FramerateController;->updateVisibility()V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v12

    if-nez v12, :cond_f

    const-wide v12, 0x7fffffffffffffffL

    return-wide v12

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_db

    if-eqz v12, :cond_21

    const-wide v12, 0x7fffffffffffffffL

    monitor-exit v14

    return-wide v12

    :cond_21
    :try_start_21
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-lez v12, :cond_54

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v6, p1, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_54

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v12, v6, v12

    if-gez v12, :cond_54

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v12, v6

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_db

    monitor-exit v14

    return-wide v12

    :cond_54
    :try_start_54
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    sub-long v6, p1, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gez v12, :cond_62

    const-wide/16 v6, 0x0

    :cond_62
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v12, :cond_ca

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    rem-long v10, v6, v12

    :goto_72
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    :goto_7e
    if-ltz v5, :cond_d4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v12, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v12, v10, v12

    if-ltz v12, :cond_cf

    iget v12, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-nez v12, :cond_af

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v5, v12, :cond_af

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    :cond_af
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v12, :cond_cc

    const-wide v12, 0x7fffffffffffffffL

    :goto_c0
    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J
    :try_end_c8
    .catchall {:try_start_54 .. :try_end_c8} :catchall_db

    monitor-exit v14

    return-wide v12

    :cond_ca
    move-wide v10, v6

    goto :goto_72

    :cond_cc
    sub-long v12, v8, v10

    goto :goto_c0

    :cond_cf
    :try_start_cf
    iget-wide v8, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J
    :try_end_d1
    .catchall {:try_start_cf .. :try_end_d1} :catchall_db

    add-int/lit8 v5, v5, -0x1

    goto :goto_7e

    :cond_d4
    monitor-exit v14

    const-wide v12, 0x7fffffffffffffffL

    return-wide v12

    :catchall_db
    move-exception v12

    monitor-exit v14

    throw v12
.end method

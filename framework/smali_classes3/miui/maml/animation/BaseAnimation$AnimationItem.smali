.class public Lmiui/maml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field private mAni:Lmiui/maml/animation/BaseAnimation;

.field private mAttrsValue:[D

.field public mDeltaTimeExp:Lmiui/maml/data/Expression;

.field public mExps:[Lmiui/maml/data/Expression;

.field public mInitTime:J

.field public mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

.field private mNeedEvaluate:Z

.field public mTime:J


# direct methods
.method public constructor <init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    iput-object p1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-direct {p0, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 12

    const/4 v7, 0x0

    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v8}, Lmiui/maml/animation/BaseAnimation;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-static {v6, p1}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->create(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/animation/interpolater/InterpolatorHelper;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    :try_start_d
    const-string/jumbo v8, "time"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_71

    :goto_1a
    const-string/jumbo v8, "dtime"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v8}, Lmiui/maml/animation/BaseAnimation;->getAttrs()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    array-length v8, v0

    new-array v8, v8, [D

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v8, v0

    new-array v8, v8, [Lmiui/maml/data/Expression;

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    array-length v8, v0

    move v4, v3

    :goto_3c
    if-ge v7, v8, :cond_6c

    aget-object v5, v0, v7

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    if-nez v2, :cond_62

    if-nez v4, :cond_62

    const-string/jumbo v9, "value"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_62

    const-string/jumbo v9, "value"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    :cond_62
    iget-object v9, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    add-int/lit8 v3, v4, 0x1

    aput-object v2, v9, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v3

    goto :goto_3c

    :cond_6c
    iget-wide v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    return-void

    :catch_71
    move-exception v1

    goto :goto_1a
.end method

.method private reevaluate()V
    .registers 10

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    if-nez v3, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    array-length v7, v6

    move v2, v1

    :goto_b
    if-ge v3, v7, :cond_22

    aget-object v0, v6, v3

    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    add-int/lit8 v1, v2, 0x1

    if-nez v0, :cond_1d

    const-wide/16 v4, 0x0

    :goto_17
    aput-wide v4, v8, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_b

    :cond_1d
    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    goto :goto_17

    :cond_22
    return-void
.end method


# virtual methods
.method public attrExists(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    :cond_7
    return v0

    :cond_8
    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    array-length v1, v1

    if-ge p1, v1, :cond_7

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    aget-object v1, v1, p1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public get(I)D
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    if-eqz v0, :cond_7

    if-gez p1, :cond_24

    :cond_7
    const-string/jumbo v0, "BaseAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to get number in AnimationItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_24
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v0, v0

    if-ge p1, v0, :cond_7

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    iput-boolean v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    :cond_32
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    return-void
.end method

.class public Lmiui/maml/animation/SizeAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mMaxH:D

.field private mMaxW:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v2, "Size"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "w"

    aput-object v4, v3, v6

    const-string/jumbo v4, "h"

    aput-object v4, v3, v7

    invoke-direct {p0, p1, v2, v3, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    iget-object v2, p0, Lmiui/maml/animation/SizeAnimation;->mItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v0, v6}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_37

    invoke-virtual {v0, v6}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    :cond_37
    invoke-virtual {v0, v7}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1b

    invoke-virtual {v0, v7}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    goto :goto_1b

    :cond_48
    return-void
.end method


# virtual methods
.method public final getHeight()D
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxHeight()D
    .registers 3

    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    return-wide v0
.end method

.method public final getMaxWidth()D
    .registers 3

    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    return-wide v0
.end method

.method public final getWidth()D
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

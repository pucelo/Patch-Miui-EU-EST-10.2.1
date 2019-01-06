.class Landroid/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->sortAnimationEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/animation/AnimatorSet$AnimationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/AnimatorSet$3;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I
    .registers 13

    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_22

    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    add-int/2addr v4, v5

    if-ne v4, v6, :cond_1c

    iget v4, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    :cond_1c
    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    :cond_22
    cmp-long v4, v2, v8

    if-nez v4, :cond_28

    const/4 v4, -0x1

    return v4

    :cond_28
    cmp-long v4, v0, v8

    if-nez v4, :cond_2d

    return v6

    :cond_2d
    sub-long v4, v0, v2

    long-to-int v4, v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/animation/AnimatorSet$AnimationEvent;

    check-cast p2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet$3;->compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I

    move-result v0

    return v0
.end method

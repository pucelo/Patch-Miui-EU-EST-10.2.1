.class final Landroid/widget/GridLayout$6;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/high16 v0, -0x80000000

    :cond_13
    return v0
.end method

.method public getBounds()Landroid/widget/GridLayout$Bounds;
    .registers 2

    new-instance v0, Landroid/widget/GridLayout$6$1;

    invoke-direct {v0, p0}, Landroid/widget/GridLayout$6$1;-><init>(Landroid/widget/GridLayout$6;)V

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

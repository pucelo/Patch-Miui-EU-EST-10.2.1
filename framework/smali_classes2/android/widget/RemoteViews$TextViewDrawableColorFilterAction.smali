.class Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableColorFilterAction"
.end annotation


# instance fields
.field final color:I

.field final index:I

.field final isRelative:Z

.field final mode:Landroid/graphics/PorterDuff$Mode;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V
    .registers 8

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private readPorterDuffMode(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_14

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_14

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1

    :cond_14
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v1
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 9

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_b

    return-void

    :cond_b
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_13
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    if-ltz v3, :cond_1c

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2a

    :cond_1c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "index must be in range [0, 3]."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_13

    :cond_2a
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    aget-object v0, v1, v3

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3a
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "TextViewDrawableColorFilterAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->isRelative:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_f
.end method

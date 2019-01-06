.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field d1:I

.field d2:I

.field d3:I

.field d4:I

.field drawablesLoaded:Z

.field i1:Landroid/graphics/drawable/Icon;

.field i2:Landroid/graphics/drawable/Icon;

.field i3:Landroid/graphics/drawable/Icon;

.field i4:Landroid/graphics/drawable/Icon;

.field id1:Landroid/graphics/drawable/Drawable;

.field id2:Landroid/graphics/drawable/Drawable;

.field id3:Landroid/graphics/drawable/Drawable;

.field id4:Landroid/graphics/drawable/Drawable;

.field isRelative:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field useIcons:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIIII)V
    .registers 10

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iput p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 10

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    iput-object p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c

    :goto_23
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_6e

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    :cond_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    :cond_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    :cond_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    :cond_69
    :goto_69
    return-void

    :cond_6a
    move v0, v2

    goto :goto_1b

    :cond_6c
    move v1, v2

    goto :goto_23

    :cond_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    goto :goto_69
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 14

    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_b

    return-void

    :cond_b
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    if-eqz v6, :cond_2b

    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v6, :cond_1f

    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_2b
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v6, :cond_6f

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_4f

    const/4 v1, 0x0

    :goto_38
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_56

    const/4 v2, 0x0

    :goto_3d
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_5d

    const/4 v3, 0x0

    :goto_42
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_64

    const/4 v4, 0x0

    :goto_47
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v6, :cond_6b

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_4f
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_38

    :cond_56
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3d

    :cond_5d
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_42

    :cond_64
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_47

    :cond_6b
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_6f
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v6, :cond_7f

    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1e

    :cond_7f
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1e
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "TextViewDrawableAction"

    return-object v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .registers 15

    const/4 v10, 0x0

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-nez v9, :cond_10

    invoke-static {}, Landroid/widget/RemoteViews;->-get0()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1

    :cond_10
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v1, :cond_4e

    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    :goto_27
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->drawablesLoaded:Z

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v1, :cond_7e

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_62

    move-object v1, v10

    :goto_37
    iput-object v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_69

    move-object v1, v10

    :goto_3e
    iput-object v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_70

    move-object v1, v10

    :goto_45
    iput-object v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_77

    :goto_4b
    iput-object v10, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    :goto_4d
    return-object v0

    :cond_4e
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    goto :goto_27

    :cond_62
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_37

    :cond_69
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3e

    :cond_70
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_45

    :cond_77
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_4b

    :cond_7e
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    if-nez v1, :cond_9a

    move-object v1, v10

    :goto_83
    iput-object v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id1:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    if-nez v1, :cond_a1

    move-object v1, v10

    :goto_8a
    iput-object v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id2:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    if-nez v1, :cond_a8

    move-object v1, v10

    :goto_91
    iput-object v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id3:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    if-nez v1, :cond_af

    :goto_97
    iput-object v10, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->id4:Landroid/graphics/drawable/Drawable;

    goto :goto_4d

    :cond_9a
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {v8, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_83

    :cond_a1
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {v8, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_8a

    :cond_a8
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {v8, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_91

    :cond_af
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v8, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_97
.end method

.method public prefersAsyncApply()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v0, :cond_51

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_53

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_55

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2c
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_59

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_38
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5d

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_44
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_61

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_50
    return-void

    :cond_51
    move v0, v2

    goto :goto_11

    :cond_53
    move v0, v2

    goto :goto_19

    :cond_55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    :cond_59
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    :cond_5d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    :cond_61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    :cond_65
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50
.end method

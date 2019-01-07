.class public Landroid/preference/MyLaunchPreference$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "MyLaunchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MyLaunchPreference$Adapter$MyViewHolder;
    }
.end annotation


# instance fields
.field ind:I

.field final synthetic this$0:Landroid/preference/MyLaunchPreference;


# direct methods
.method public constructor <init>(Landroid/preference/MyLaunchPreference;ILjava/util/ArrayList;)V
    .registers 6

    invoke-virtual {p1}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Landroid/preference/MyLaunchPreference$Adapter;->this$0:Landroid/preference/MyLaunchPreference;

    iput p2, p0, Landroid/preference/MyLaunchPreference$Adapter;->ind:I

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/preference/MyLaunchPreference$AppData;
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MyLaunchPreference$AppData;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_4f

    iget-object v2, p0, Landroid/preference/MyLaunchPreference$Adapter;->this$0:Landroid/preference/MyLaunchPreference;

    invoke-virtual {v2}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/preference/MyLaunchPreference$Adapter$MyViewHolder;

    invoke-direct {v0, v2, v1}, Landroid/preference/MyLaunchPreference$Adapter$MyViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object p2, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_16
    iget v3, p0, Landroid/preference/MyLaunchPreference$Adapter;->ind:I

    if-ne p1, v3, :cond_36

    iget-object v2, p0, Landroid/preference/MyLaunchPreference$Adapter;->this$0:Landroid/preference/MyLaunchPreference;

    invoke-virtual {v2}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v1, "holo_blue_light"

    const-string v4, "color"

    const-string v3, "android"

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_3c

    :cond_36
    const v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_3c
    invoke-virtual {p0, p1}, Landroid/preference/MyLaunchPreference$Adapter;->getItem(I)Landroid/preference/MyLaunchPreference$AppData;

    move-result-object v1

    iget-object v2, v0, Landroid/preference/MyLaunchPreference$Adapter$MyViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/preference/MyLaunchPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Landroid/preference/MyLaunchPreference$Adapter$MyViewHolder;->ivIcon:Landroid/widget/ImageView;

    iget-object v1, v1, Landroid/preference/MyLaunchPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_4f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MyLaunchPreference$Adapter$MyViewHolder;

    goto :goto_16
.end method

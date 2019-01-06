.class Lmiui/maml/ThirdAppPicker$FileListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThirdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ThirdAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lmiui/maml/ThirdAppPicker;


# direct methods
.method public constructor <init>(Lmiui/maml/ThirdAppPicker;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_38

    move-object v3, p2

    :goto_5
    iget-object v5, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    invoke-static {v5}, Lmiui/maml/ThirdAppPicker;->-get0(Lmiui/maml/ThirdAppPicker;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const v5, 0x110c0017

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x110c0018

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v1, :cond_43

    :goto_25
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_4e

    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    invoke-static {v4}, Lmiui/maml/ThirdAppPicker;->-get1(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_37
    return-object v3

    :cond_38
    iget-object v5, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x11030002

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_5

    :cond_43
    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    invoke-static {v4}, Lmiui/maml/ThirdAppPicker;->-get1(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_25

    :cond_4e
    const v4, 0x110900b5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_37
.end method

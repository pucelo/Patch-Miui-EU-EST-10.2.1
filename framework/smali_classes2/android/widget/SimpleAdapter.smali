.class public Landroid/widget/SimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleAdapter$SimpleFilter;,
        Landroid/widget/SimpleAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private mDropDownResource:I

.field private mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method static synthetic -get0(Landroid/widget/SimpleAdapter;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SimpleAdapter;)[I
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    iput p3, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    iput p3, p0, Landroid/widget/SimpleAdapter;->mResource:I

    iput-object p4, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    iput-object p5, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 16

    iget-object v10, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    iget-object v5, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    iget-object v8, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    array-length v2, v8

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v2, :cond_d8

    aget v10, v8, v6

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_49

    aget-object v10, v5, v6

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4c

    const-string/jumbo v7, ""

    :goto_28
    if-nez v7, :cond_2d

    const-string/jumbo v7, ""

    :cond_2d
    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-interface {v0, v9, v3, v7}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    :cond_34
    if-nez v1, :cond_49

    instance-of v10, v9, Landroid/widget/Checkable;

    if-eqz v10, :cond_8b

    instance-of v10, v3, Ljava/lang/Boolean;

    if-eqz v10, :cond_51

    check-cast v9, Landroid/widget/Checkable;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_49
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_4c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_28

    :cond_51
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_5b

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_49

    :cond_5b
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " should be bound to a Boolean, not a "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_86

    const-string/jumbo v10, "<unknown type>"

    :goto_7a
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_7a

    :cond_8b
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_95

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_49

    :cond_95
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_af

    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_a9

    check-cast v9, Landroid/widget/ImageView;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_49

    :cond_a9
    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_49

    :cond_af
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_d8
    return-void
.end method

.method private createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 8

    if-nez p3, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p1, p5, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_7
    invoke-direct {p0, p2, v0}, Landroid/widget/SimpleAdapter;->bindView(ILandroid/view/View;)V

    return-object v0

    :cond_b
    move-object v0, p3

    goto :goto_7
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_11

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    :goto_6
    iget v5, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_6
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_5
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    if-nez v0, :cond_c

    new-instance v0, Landroid/widget/SimpleAdapter$SimpleFilter;

    invoke-direct {v0, p0, v1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$SimpleFilter;)V

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    :cond_c
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/widget/SimpleAdapter;->mResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;
    .registers 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .registers 2

    iput p1, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    return-void
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_6

    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-ne p1, v1, :cond_17

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_5

    :cond_17
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_5
.end method

.method public setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

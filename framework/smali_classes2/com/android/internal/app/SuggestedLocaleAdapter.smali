.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field private static final MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final TYPE_LOCALE:I = 0x2


# instance fields
.field private mContextOverride:Landroid/content/Context;

.field private final mCountryMode:Z

.field private mDisplayLocale:Ljava/util/Locale;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return p1
.end method

.method public constructor <init>(Ljava/util/Set;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    :cond_31
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_37
    return-void
.end method

.method private setTextTo(Landroid/widget/TextView;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method private showHeaders()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_f

    return v0

    :cond_f
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_15

    const/4 v0, -0x2

    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_15
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    if-nez p1, :cond_c

    return v1

    :cond_c
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v7, 0x0

    if-nez p2, :cond_11

    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v5, :cond_11

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_a0

    instance-of v5, p2, Landroid/view/ViewGroup;

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090075

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_25
    const v5, 0x10202e9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v5, :cond_63

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9d

    const/4 v5, 0x4

    :goto_60
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_63
    :goto_63
    return-object p2

    :pswitch_64
    instance-of v5, p2, Landroid/widget/TextView;

    if-nez v5, :cond_71

    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090076

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_71
    move-object v4, p2

    check-cast v4, Landroid/widget/TextView;

    if-nez v1, :cond_86

    const v5, 0x10402ef

    invoke-direct {p0, v4, v5}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    :goto_7c
    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz v5, :cond_98

    iget-object v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    :goto_82
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    goto :goto_63

    :cond_86
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v5, :cond_91

    const v5, 0x1040562

    invoke-direct {p0, v4, v5}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_7c

    :cond_91
    const v5, 0x10402ee

    invoke-direct {p0, v4, v5}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_7c

    :cond_98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    goto :goto_82

    :cond_9d
    const/4 v5, 0x3

    goto :goto_60

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 5

    const/4 v1, 0x0

    if-nez p2, :cond_8

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_7
.end method

.method public sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

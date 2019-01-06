.class Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
.super Landroid/widget/Filter;
.source "SuggestedLocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuggestedLocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterByNativeAndUiNames"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 15

    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v10}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_1d

    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v12}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10, v11}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set1(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1d
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v10}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get1(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_39

    :cond_30
    iput-object v9, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/widget/Filter$FilterResults;->count:I

    :goto_38
    return-object v7

    :cond_39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v0, :cond_79

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_73

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_76

    :cond_73
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_79
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_38
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set0(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2, v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get0(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-get2(Lcom/android/internal/app/SuggestedLocaleAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-set2(Lcom/android/internal/app/SuggestedLocaleAdapter;I)I

    goto :goto_19

    :cond_37
    iget v2, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v2, :cond_41

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    :goto_40
    return-void

    :cond_41
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetInvalidated()V

    goto :goto_40
.end method

.method wordMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v6

    :cond_9
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_12
    if-ge v2, v4, :cond_20

    aget-object v0, v1, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    return v6

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    return v3
.end method

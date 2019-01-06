.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .registers 12

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    if-eq v2, v3, :cond_3c

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_27

    const/4 v0, 0x1

    :goto_11
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_29

    const/4 v1, 0x1

    :goto_16
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_2b

    const/4 v4, 0x1

    :goto_1b
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_2d

    const/4 v5, 0x1

    :goto_20
    if-eqz v0, :cond_2f

    xor-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_2f

    return v7

    :cond_27
    const/4 v0, 0x0

    goto :goto_11

    :cond_29
    const/4 v1, 0x0

    goto :goto_16

    :cond_2b
    const/4 v4, 0x0

    goto :goto_1b

    :cond_2d
    const/4 v5, 0x0

    goto :goto_20

    :cond_2f
    if-eqz v1, :cond_36

    xor-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_36

    return v8

    :cond_36
    if-eqz v4, :cond_39

    return v7

    :cond_39
    if-eqz v5, :cond_3c

    return v8

    :cond_3c
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/text/style/SuggestionSpan;

    check-cast p2, Landroid/text/style/SuggestionSpan;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result v0

    return v0
.end method

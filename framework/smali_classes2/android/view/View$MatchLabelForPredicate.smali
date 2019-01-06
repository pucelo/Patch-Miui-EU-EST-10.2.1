.class Landroid/view/View$MatchLabelForPredicate;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchLabelForPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mLabeledId:I


# direct methods
.method static synthetic -set0(Landroid/view/View$MatchLabelForPredicate;I)I
    .registers 2

    iput p1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    return p1
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$MatchLabelForPredicate;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/View$MatchLabelForPredicate;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroid/view/View;)Z
    .registers 4

    invoke-static {p1}, Landroid/view/View;->-get0(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View$MatchLabelForPredicate;->test(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

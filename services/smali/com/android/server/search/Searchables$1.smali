.class final Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/Searchables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 7

    if-ne p1, p2, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_4
    invoke-static {p1}, Lcom/android/server/search/Searchables;->-wrap0(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    invoke-static {p2}, Lcom/android/server/search/Searchables;->-wrap0(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v0, :cond_14

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_14

    const/4 v2, -0x1

    return v2

    :cond_14
    if-eqz v1, :cond_1c

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    return v2

    :cond_1c
    iget v2, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
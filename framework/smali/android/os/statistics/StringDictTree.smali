.class Landroid/os/statistics/StringDictTree;
.super Landroid/os/statistics/TreeNode;
.source "StringDictTree.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/statistics/TreeNode;-><init>()V

    array-length v3, p1

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_10

    aget-object v0, p1, v1

    invoke-super {p0, v0, v2}, Landroid/os/statistics/TreeNode;->insert(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/os/statistics/TreeNode;->find(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

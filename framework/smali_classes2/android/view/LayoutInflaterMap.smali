.class public Landroid/view/LayoutInflaterMap;
.super Ljava/lang/Object;
.source "LayoutInflaterMap.java"


# static fields
.field private static volatile sLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLayoutPairs:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x1103002e

    const v1, 0x1103000e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLayoutMap(Landroid/content/Context;)V
    .registers 7

    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-eqz v3, :cond_5

    return-void

    :cond_5
    const-class v4, Landroid/view/LayoutInflaterMap;

    monitor-enter v4

    :try_start_8
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-nez v3, :cond_44

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    :goto_12
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    array-length v3, v3

    if-ge v0, v3, :cond_42

    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/view/LayoutInflaterMap;->needResolveReference(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v5, v5, v0

    invoke-static {v3, v5}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    :goto_2d
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    add-int/lit8 v5, v0, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_12

    :cond_3d
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v1, v3, v0

    goto :goto_2d

    :cond_42
    sput-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_46

    :cond_44
    monitor-exit v4

    return-void

    :catchall_46
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static getResourceId(Landroid/content/Context;I)I
    .registers 5

    move v1, p1

    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {p0}, Landroid/view/LayoutInflaterMap;->buildLayoutMap(Landroid/content/Context;)V

    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_18
    return v1
.end method

.method private static needResolveReference(I)Z
    .registers 3

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x1000000

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

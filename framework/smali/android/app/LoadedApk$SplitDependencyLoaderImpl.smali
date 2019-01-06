.class Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitDependencyLoaderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader",
        "<",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCachedClassLoaders:[Ljava/lang/ClassLoader;

.field private final mCachedResourcePaths:[[Ljava/lang/String;

.field final synthetic this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[I>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p1}, Landroid/app/LoadedApk;->-get3(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-static {p1}, Landroid/app/LoadedApk;->-get3(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    return-void
.end method

.method private ensureSplitLoaded(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get3(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_30

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Split name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    add-int/lit8 v0, v0, 0x1

    :cond_32
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->loadDependenciesForSplit(I)V

    return v0
.end method


# virtual methods
.method protected constructSplit(I[II)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_3f

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0, v4}, Landroid/app/LoadedApk;->-wrap0(Landroid/app/LoadedApk;Ljava/util/List;)V

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get0(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;

    move-result-object v1

    aput-object v1, v0, v3

    array-length v1, p2

    move v0, v3

    :goto_1a
    if-ge v0, v1, :cond_2e

    aget v8, p2, v0

    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v2}, Landroid/app/LoadedApk;->-get4(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v8, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2e
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v1, v3

    return-void

    :cond_3f
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v6, v0, p3

    iget-object v10, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v0

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get1(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v2

    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v5}, Landroid/app/LoadedApk;->-get2(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, p1, -0x1

    aget-object v7, v5, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v7}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    aput-object v0, v10, p1

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-get4(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v0, p2

    :goto_7f
    if-ge v3, v0, :cond_93

    aget v8, p2, v3

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get4(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v8, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_93
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v1, p1

    return-void
.end method

.method getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected isSplitCached(I)Z
    .registers 3

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

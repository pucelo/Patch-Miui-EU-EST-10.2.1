.class public Lcom/android/systemui/plugins/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;,
        Lcom/android/systemui/plugins/VersionInfo$Version;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/systemui/plugins/VersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    return-void
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const-class v8, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v9, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v4}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-class v8, Lcom/android/systemui/plugins/annotations/Requires;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/annotations/Requires;

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v7}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v7}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v11

    move/from16 v0, p2

    invoke-direct {v10, v11, v0}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-class v8, Lcom/android/systemui/plugins/annotations/Requirements;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/annotations/Requirements;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/android/systemui/plugins/annotations/Requirements;->value()[Lcom/android/systemui/plugins/annotations/Requires;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v5, v9, v8

    iget-object v11, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v5}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v5}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v14

    move/from16 v0, p2

    invoke-direct {v13, v14, v0}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const-class v8, Lcom/android/systemui/plugins/annotations/DependsOn;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/annotations/DependsOn;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    :cond_4
    const-class v8, Lcom/android/systemui/plugins/annotations/Dependencies;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/annotations/Dependencies;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/android/systemui/plugins/annotations/Dependencies;->value()[Lcom/android/systemui/plugins/annotations/DependsOn;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v1, v9, v8

    invoke-interface {v1}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo$Version;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/systemui/plugins/VersionInfo$Version;"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v1, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-static {p1, v1}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    return-object v1

    :cond_0
    return-object v2
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/systemui/plugins/VersionInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    return-object p0
.end method

.method public checkVersion(Lcom/android/systemui/plugins/VersionInfo;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v6, Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/VersionInfo$Version;

    if-nez v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/plugins/VersionInfo;->createVersion(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo$Version;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    new-instance v7, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not provide an interface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v7

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v7

    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v9

    if-eq v7, v9, :cond_0

    new-instance v9, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    invoke-static {v4}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v7

    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v10

    if-ge v7, v10, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v4}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v10

    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v11

    invoke-direct {v9, v0, v7, v10, v11}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/Class;ZII)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v7, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get0(Lcom/android/systemui/plugins/VersionInfo$Version;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing required dependency "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v7
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_6
    return-void
.end method

.method public getDefaultVersion()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-static {v0}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v0

    return v0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVersionInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.class public Lmiui/maml/ScreenElementRootFactory;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRootFactory$Parameter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;
    .registers 10

    const/4 v4, 0x0

    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->-get0(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_d

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_d
    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->-get2(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->-get1(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_37

    if-eqz v8, :cond_37

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v2, v8}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    :cond_37
    if-nez v1, :cond_3a

    return-object v4

    :cond_3a
    new-instance v0, Lmiui/maml/LifecycleResourceManager;

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x57e40

    invoke-direct/range {v0 .. v5}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    new-instance v7, Lmiui/maml/ScreenContext;

    invoke-direct {v7, v6, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    new-instance v2, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, v7}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    return-object v2
.end method

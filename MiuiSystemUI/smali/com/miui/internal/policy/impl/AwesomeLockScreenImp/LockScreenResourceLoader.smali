.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;
.super Lmiui/maml/ResourceLoader;
.source "LockScreenResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/ResourceLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

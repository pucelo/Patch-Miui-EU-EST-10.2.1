.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;
.super Lmiui/maml/elements/ScreenElementFactory;
.source "LockScreenElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    check-cast p2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-direct {v1, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V

    return-object v1

    :cond_0
    const-string/jumbo v1, "Wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;

    invoke-direct {v1, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v1

    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenBitmapProviderFactory;
.super Lmiui/maml/ObjectFactory$BitmapProviderFactory;
.source "LockscreenBitmapProviderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCreate(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .locals 1

    const-string/jumbo v0, "Screenshot"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;

    invoke-direct {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/ScreenshotProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

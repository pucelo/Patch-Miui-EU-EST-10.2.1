.class public Lcom/android/systemui/SystemUIFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# static fields
.field static mFactory:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;)V
    .locals 6

    const v3, 0x7f1101cb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "No SystemUIFactory component configured"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SystemUIFactory;

    sput-object v3, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SystemUIFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating SystemUIFactory component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance()Lcom/android/systemui/SystemUIFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-object v0
.end method


# virtual methods
.method public createInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V

    return-object v0
.end method

.method public createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ImageView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public createKeyguardWallpaperCarouselController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/LockScreenMagazineController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/LockScreenMagazineController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public createQSTileHost(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/qs/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    return-object v0
.end method

.method public createScrimController(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;)V

    return-object v0
.end method

.method public createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    return-object v0
.end method

.method public injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/android/systemui/miui/ToastOverlayManager;

    new-instance v1, Lcom/android/systemui/SystemUIFactory$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIFactory$1;-><init>(Lcom/android/systemui/SystemUIFactory;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/miui/AppIconsManager;

    new-instance v1, Lcom/android/systemui/SystemUIFactory$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIFactory$2;-><init>(Lcom/android/systemui/SystemUIFactory;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    new-instance v1, Lcom/android/systemui/SystemUIFactory$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIFactory$3;-><init>(Lcom/android/systemui/SystemUIFactory;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

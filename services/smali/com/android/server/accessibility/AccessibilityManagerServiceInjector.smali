.class Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;
.super Ljava/lang/Object;
.source "AccessibilityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerServiceInjector$1;
    }
.end annotation


# static fields
.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mExceptedPakcages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->onChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v2, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    :cond_e
    return-void
.end method

.method public static init(Landroid/content/ContentResolver;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    sput-object p0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "package_accessibillity_service_ignored"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->onChanged()V

    return-void
.end method

.method public static isExcepted(Ljava/lang/CharSequence;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->isExcepted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExcepted(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_e
    return v0
.end method

.method private static onChanged()V
    .registers 3

    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "package_accessibillity_service_ignored"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

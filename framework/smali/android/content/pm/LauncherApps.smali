.class public Landroid/content/pm/LauncherApps;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$1;,
        Landroid/content/pm/LauncherApps$Callback;,
        Landroid/content/pm/LauncherApps$CallbackMessageHandler;,
        Landroid/content/pm/LauncherApps$PinItemRequest;,
        Landroid/content/pm/LauncherApps$ShortcutQuery;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_PIN_APPWIDGET:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

.field public static final ACTION_CONFIRM_PIN_SHORTCUT:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

.field static final DEBUG:Z = false

.field public static final EXTRA_PIN_ITEM_REQUEST:Ljava/lang/String; = "android.content.pm.extra.PIN_ITEM_REQUEST"

.field static final TAG:Ljava/lang/String; = "LauncherApps"


# instance fields
.field private mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherApps$CallbackMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mService:Landroid/content/pm/ILauncherApps;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "launcherapps"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ILauncherApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/LauncherApps;-><init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    new-instance v0, Landroid/content/pm/LauncherApps$1;

    invoke-direct {v0, p0}, Landroid/content/pm/LauncherApps$1;-><init>(Landroid/content/pm/LauncherApps;)V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    iput-object p1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    if-nez p2, :cond_a

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :cond_a
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;-><init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/pm/LauncherActivityInfo;

    iget-object v4, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v4, v5, p2}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2b
    return-object v1
.end method

.method private findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I
    .registers 6

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_26

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-static {v2}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->-get0(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_23

    return v0

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    const/4 v2, -0x1

    return v2
.end method

.method private getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v4, 0x0

    if-nez p2, :cond_4

    return-object v4

    :cond_4
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v3, p3}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2, p4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_16} :catch_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v3

    return-object v3

    :catch_18
    move-exception v1

    return-object v4
.end method

.method private logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "LauncherApps"

    const-string/jumbo v1, "Accessing other profiles/users from managed profile is no longer allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method private removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V
    .registers 15

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/ILauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v8

    if-nez v8, :cond_22

    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string/jumbo v1, "Shortcut could not be started"

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_22
    return-void
.end method


# virtual methods
.method public getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/pm/ILauncherApps;->getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/content/pm/LauncherApps;->convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v2, "packageName"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "user"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_f
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_4c

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_46} :catch_46

    :catch_46
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_4c
    return-object v0
.end method

.method public getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .registers 3

    const-string/jumbo v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_16
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getShortcutBadgedIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_7
.end method

.method public getShortcutConfigActivityIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/IntentSender;
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps;->getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getShortcutConfigActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/pm/ILauncherApps;->getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/content/pm/LauncherApps;->convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-nez v4, :cond_e

    return-object v6

    :cond_e
    :try_start_e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3b

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v5

    if-eqz v5, :cond_35

    new-instance v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_41

    :try_start_2f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :goto_32
    return-object v5

    :catch_33
    move-exception v3

    goto :goto_32

    :cond_35
    :try_start_35
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    :goto_38
    return-object v1

    :catch_39
    move-exception v3

    goto :goto_38

    :cond_3b
    :try_start_3b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    :goto_3e
    return-object v6

    :catch_3f
    move-exception v3

    goto :goto_3e

    :catchall_41
    move-exception v5

    :try_start_42
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    :goto_45
    throw v5

    :catch_46
    move-exception v3

    goto :goto_45

    :cond_48
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v6

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7, p2}, Landroid/content/pm/LauncherApps;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    :cond_5f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-eqz v5, :cond_89

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_8a

    :pswitch_70
    return-object v6

    :pswitch_71
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v6

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7, p2}, Landroid/content/pm/LauncherApps;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    :pswitch_82
    iget-object v5, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    :cond_89
    return-object v6

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_82
        :pswitch_71
        :pswitch_70
        :pswitch_70
        :pswitch_82
    .end packed-switch
.end method

.method public getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIconResId(Landroid/content/pm/ShortcutInfo;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v0

    return v0
.end method

.method public getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p0, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2e

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    :cond_2e
    return v2
.end method

.method public getShortcutInfo(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p0, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherApps$ShortcutQuery;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mChangedSince:J

    iget-object v4, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mPackage:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    iget-object v6, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    iget v7, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ILauncherApps;->getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1d} :catch_1f

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public hasShortcutHostPermission()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/ILauncherApps;->hasShortcutHostPermission(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 6

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/pm/ILauncherApps;->isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    return v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/content/pm/ILauncherApps;->isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    return v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .registers 8

    monitor-enter p0

    if-eqz p1, :cond_24

    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v2

    if-gez v2, :cond_24

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_26

    const/4 v0, 0x1

    :goto_12
    invoke-direct {p0, p1, p2}, Landroid/content/pm/LauncherApps;->addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2e

    if-eqz v0, :cond_24

    :try_start_17
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v2, v3, v4}, Landroid/content/pm/ILauncherApps;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_28
    .catchall {:try_start_17 .. :try_end_24} :catchall_2e

    :cond_24
    monitor-exit p0

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_12

    :catch_28
    move-exception v1

    :try_start_29
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .registers 10

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_4
    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v4, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2}, Landroid/content/pm/ILauncherApps;->resolveActivity(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Landroid/content/pm/LauncherActivityInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0, p2}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_24
    return-object v6
.end method

.method public startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 12

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->showAppDetailsAsUser(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 12

    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->startActivityAsUser(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 10

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12

    invoke-direct {p0, p5}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    move-result v1

    if-nez v1, :cond_13

    :try_start_c
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v1, v2}, Landroid/content/pm/ILauncherApps;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15
    .catchall {:try_start_c .. :try_end_13} :catchall_1b

    :cond_13
    monitor-exit p0

    return-void

    :catch_15
    move-exception v0

    :try_start_16
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

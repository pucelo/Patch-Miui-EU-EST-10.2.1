.class public final Landroid/service/dreams/Sandman;
.super Ljava/lang/Object;
.source "Sandman.java"


# static fields
.field private static final SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "Sandman"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.Somnambulator"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/service/dreams/Sandman;->SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isScreenSaverActivatedOnDock(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screensaver_activate_on_dock"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isScreenSaverEnabled(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screensaver_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v1, Landroid/service/dreams/Sandman;->SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static startDream(Landroid/content/Context;Z)V
    .registers 8

    :try_start_0
    const-string/jumbo v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_36

    if-eqz p1, :cond_37

    const-string/jumbo v3, "Sandman"

    const-string/jumbo v4, "Activating dream while docked."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "android.service.dreams:DREAM"

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :goto_33
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V

    :cond_36
    :goto_36
    return-void

    :cond_37
    const-string/jumbo v3, "Sandman"

    const-string/jumbo v4, "Activating dream by user request."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_33

    :catch_41
    move-exception v1

    const-string/jumbo v3, "Sandman"

    const-string/jumbo v4, "Could not start dream when docked."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public static startDreamByUserRequest(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    return-void
.end method

.method public static startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverActivatedOnDock(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    :cond_e
    const-string/jumbo v0, "Sandman"

    const-string/jumbo v1, "Dreams currently disabled for docks."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    return-void
.end method

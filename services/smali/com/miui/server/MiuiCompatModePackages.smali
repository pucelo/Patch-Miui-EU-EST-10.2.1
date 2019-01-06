.class public final Lcom/miui/server/MiuiCompatModePackages;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiCompatModePackages$1;,
        Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;,
        Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field private static final ATTR_CONFIG_NOTIFY_SUGGEST_APPS:Ljava/lang/String; = "notifySuggestApps"

.field private static final MSG_DONT_SHOW_AGAIN:I = 0x69

.field private static final MSG_ON_APP_LAUNCH:I = 0x68

.field private static final MSG_READ:I = 0x65

.field private static final MSG_REGISTER_OBSERVER:I = 0x66

.field private static final MSG_UNREGISTER_OBSERVER:I = 0x67

.field private static final MSG_WRITE:I = 0x64

.field private static final MSG_WRITE_SPECIAL_MODE:I = 0x6a

.field private static final TAG:Ljava/lang/String; = "MiuiCompatModePackages"

.field private static final TAG_NAME_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field private mAlertDialog:Lmiui/app/AlertDialog;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAspect:F

.field private final mDefaultType:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mNotchConfig:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotchSpecialModePackages:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifySuggestApps:Z

.field private final mPackages:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessObserver:Landroid/app/IMiuiProcessObserver;

.field private final mRestrictList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialModeFile:Landroid/util/AtomicFile;

.field private final mSuggestList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportNotchList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/miui/server/MiuiCompatModePackages;)Lmiui/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/MiuiCompatModePackages;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->gotoMaxAspectSettings()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleDontShowAgain()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleOnAppLaunch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleRegisterObservers()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleRemovePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleUnregisterObservers()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleUpdatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readPackagesConfig()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readSpecialModeConfig()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readSuggestApps()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    new-instance v0, Lcom/miui/server/MiuiCompatModePackages$1;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiCompatModePackages$1;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    const-string/jumbo v1, "android.dpi.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "android.view.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.projection.gearhead"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.apps.books"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.subcast.radio.android.prod"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.spotify.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.waze"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.skype.raider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "org.telegram.messenger"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.audible.application"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "tunein.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "au.com.shiftyjelly.pocketcasts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.nytimes.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.stitcher.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "org.npr.one"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.gaana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "radiotime.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.quanticapps.quranandroid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.scannerradio"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.amazon.mp3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "de.radiocom.bigfm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.bamnetworks.mobile.android.gameday.atbat"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.itunestoppodcastplayer.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sirius"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    const-string/jumbo v0, "dipper"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    const-string/jumbo v0, "sakura"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    :cond_158
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.tmgp.pubgmhdce"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_160
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "miui-packages-compat.xml"

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "miui-specail-mode-v2.xml"

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    new-instance v0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;-><init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->getDeviceAspect()F

    return-void
.end method

.method private createDialog()V
    .registers 4

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x110900e8

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x110900e9

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$3;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$3;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    const v2, 0x110900eb

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$4;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$4;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    const v2, 0x110900ec

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$5;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$5;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private getDefaultMode(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private getDefaultNotchConfig(Ljava/lang/String;)I
    .registers 6

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2c

    move-result v1

    monitor-exit v2

    return v1

    :cond_19
    monitor-exit v2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->resolveNotchConfig(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2f

    monitor-exit v2

    return v0

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getDeviceAspect()F
    .registers 8

    iget v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2a

    iget-object v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v2, :cond_2d

    const/4 v4, 0x0

    :goto_28
    iput v4, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    :cond_2a
    iget v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    return v5

    :cond_2d
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float v4, v5, v6

    goto :goto_28
.end method

.method private getPackageMode(Ljava/lang/String;)F
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_15

    monitor-exit v2

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_13
    int-to-float v1, v1

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_18
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultMode(Ljava/lang/String;)I

    move-result v1

    goto :goto_13
.end method

.method private getSpecialMode(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_14

    monitor-exit v2

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_13
    return v1

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private gotoMaxAspectSettings()V
    .registers 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.SubSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":settings:show_fragment"

    const-string/jumbo v3, "com.android.settings.MaxAspectRatioSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string/jumbo v2, "MiuiCompatModePackages"

    const-string/jumbo v3, "error when goto max aspect settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method private handleDontShowAgain()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private handleOnAppLaunch(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    :try_start_d
    const-string/jumbo v1, "MiuiCompatModePackages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launching suggest app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    if-nez v1, :cond_2e

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->createDialog()V

    :cond_2e
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "error showing suggest dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method private handleRegisterObservers()V
    .registers 4

    iget-boolean v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$2;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$2;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    :try_start_c
    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "registering process observer..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "error when registering process observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method private handleRemovePackage(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removePackage(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removeSpecialModePackage(Ljava/lang/String;)V

    return-void
.end method

.method private handleUnregisterObservers()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    if-eqz v1, :cond_19

    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "unregistering process observer..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_1a
    .catchall {:try_start_e .. :try_end_17} :catchall_25

    :goto_17
    iput-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    :cond_19
    return-void

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "error when unregistering process observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_17

    :catchall_25
    move-exception v1

    iput-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    throw v1
.end method

.method private handleUpdatePackage(Ljava/lang/String;)V
    .registers 7

    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_44

    monitor-exit v3

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    :cond_1f
    const-string/jumbo v2, "MiuiCompatModePackages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " updated, removing config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removePackage(Ljava/lang/String;)V

    :cond_43
    return-void

    :catchall_44
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isDefaultRestrict(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private isNotchSpecailMode(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getSpecialMode(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private readPackagesConfig()V
    .registers 15

    const/4 v4, 0x0

    :try_start_1
    iget-object v12, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_18
    const/4 v12, 0x2

    if-eq v3, v12, :cond_23

    const/4 v12, 0x1

    if-eq v3, v12, :cond_23

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_af
    .catchall {:try_start_1 .. :try_end_21} :catchall_c4

    move-result v3

    goto :goto_18

    :cond_23
    const/4 v12, 0x1

    if-ne v3, v12, :cond_2e

    if-eqz v4, :cond_2b

    :try_start_28
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v2

    goto :goto_2b

    :cond_2e
    :try_start_2e
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "compat-packages"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_82

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    :cond_44
    const/4 v12, 0x2

    if-ne v3, v12, :cond_7b

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7b

    const-string/jumbo v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_93

    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7b

    const-string/jumbo v12, "mode"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_6c} :catch_af
    .catchall {:try_start_2e .. :try_end_6c} :catchall_c4

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_74

    :try_start_70
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_73} :catch_91
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_af
    .catchall {:try_start_70 .. :try_end_73} :catchall_c4

    move-result v6

    :cond_74
    :goto_74
    :try_start_74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    :goto_7b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_44

    :cond_82
    iget-object v13, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_85} :catch_af
    .catchall {:try_start_74 .. :try_end_85} :catchall_c4

    :try_start_85
    iget-object v12, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_c1

    :try_start_8a
    monitor-exit v13
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8b} :catch_af
    .catchall {:try_start_8a .. :try_end_8b} :catchall_c4

    if-eqz v4, :cond_90

    :try_start_8d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_cb

    :cond_90
    :goto_90
    return-void

    :catch_91
    move-exception v1

    goto :goto_74

    :cond_93
    :try_start_93
    const-string/jumbo v12, "config"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const-string/jumbo v12, "notifySuggestApps"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iput-boolean v12, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ae} :catch_af
    .catchall {:try_start_93 .. :try_end_ae} :catchall_c4

    goto :goto_7b

    :catch_af
    move-exception v0

    :try_start_b0
    const-string/jumbo v12, "MiuiCompatModePackages"

    const-string/jumbo v13, "Error reading compat-packages"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_c4

    if-eqz v4, :cond_90

    :try_start_bb
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_90

    :catch_bf
    move-exception v2

    goto :goto_90

    :catchall_c1
    move-exception v12

    :try_start_c2
    monitor-exit v13

    throw v12
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c4} :catch_af
    .catchall {:try_start_c2 .. :try_end_c4} :catchall_c4

    :catchall_c4
    move-exception v12

    if-eqz v4, :cond_ca

    :try_start_c7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cd

    :cond_ca
    :goto_ca
    throw v12

    :catch_cb
    move-exception v2

    goto :goto_90

    :catch_cd
    move-exception v2

    goto :goto_ca
.end method

.method private readSpecialModeConfig()V
    .registers 16

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v4, 0x0

    :try_start_3
    iget-object v11, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_1a
    if-eq v3, v14, :cond_23

    if-eq v3, v13, :cond_23

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_92
    .catchall {:try_start_3 .. :try_end_21} :catchall_a6

    move-result v3

    goto :goto_1a

    :cond_23
    if-ne v3, v13, :cond_2d

    if-eqz v4, :cond_2a

    :try_start_27
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v2

    goto :goto_2a

    :cond_2d
    :try_start_2d
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "special-mode"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    :cond_43
    if-ne v3, v14, :cond_78

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v14, :cond_78

    const-string/jumbo v11, "pkg"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_78

    const-string/jumbo v11, "mode"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_69} :catch_92
    .catchall {:try_start_2d .. :try_end_69} :catchall_a6

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_71

    :try_start_6d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_70} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_92
    .catchall {:try_start_6d .. :try_end_70} :catchall_a6

    move-result v6

    :cond_71
    :goto_71
    :try_start_71
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v13, :cond_43

    :cond_7e
    iget-object v12, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_81} :catch_92
    .catchall {:try_start_71 .. :try_end_81} :catchall_a6

    :try_start_81
    iget-object v11, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_8f

    :try_start_86
    monitor-exit v12
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_92
    .catchall {:try_start_86 .. :try_end_87} :catchall_a6

    if-eqz v4, :cond_8c

    :try_start_89
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_a4

    :cond_8c
    :goto_8c
    return-void

    :catch_8d
    move-exception v1

    goto :goto_71

    :catchall_8f
    move-exception v11

    :try_start_90
    monitor-exit v12

    throw v11
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_92} :catch_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_a6

    :catch_92
    move-exception v0

    :try_start_93
    const-string/jumbo v11, "MiuiCompatModePackages"

    const-string/jumbo v12, "Error reading compat-packages"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_a6

    if-eqz v4, :cond_8c

    :try_start_9e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_8c

    :catch_a2
    move-exception v2

    goto :goto_8c

    :catch_a4
    move-exception v2

    goto :goto_8c

    :catchall_a6
    move-exception v11

    if-eqz v4, :cond_ac

    :try_start_a9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    :cond_ac
    :goto_ac
    throw v11

    :catch_ad
    move-exception v2

    goto :goto_ac
.end method

.method private readSuggestApps()V
    .registers 4

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1e

    const/4 v0, 0x1

    :cond_17
    monitor-exit v2

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWrite()V

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeSpecialModePackage(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1e

    const/4 v0, 0x1

    :cond_17
    monitor-exit v2

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWriteSpecialMode()V

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private resolveDefaultAspectType(Ljava/lang/String;)I
    .registers 10

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x4

    return v4

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_3c

    move-result-object v0

    :goto_17
    if-nez v0, :cond_1a

    return v7

    :cond_1a
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v3, :cond_26

    const-string/jumbo v4, "android.max_aspect"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    :cond_26
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->getDeviceAspect()F

    move-result v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_30

    const/4 v4, 0x1

    return v4

    :cond_30
    iget-object v4, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v4, 0x3

    return v4

    :cond_3a
    const/4 v4, 0x5

    return v4

    :catch_3c
    move-exception v2

    goto :goto_17
.end method

.method private resolveNotchConfig(Ljava/lang/String;)I
    .registers 11

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0x700

    return v5

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v6, 0x80

    const/4 v7, 0x0

    invoke-interface {v5, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_46

    move-result-object v0

    :goto_18
    if-nez v0, :cond_1b

    return v8

    :cond_1b
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v3, :cond_45

    const-string/jumbo v5, "notch.config"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    const/16 v1, 0x100

    const-string/jumbo v5, "portrait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    or-int/lit16 v1, v1, 0x200

    :cond_3a
    const-string/jumbo v5, "landscape"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    or-int/lit16 v1, v1, 0x400

    :cond_45
    return v1

    :catch_46
    move-exception v2

    goto :goto_18
.end method

.method private scheduleWrite()V
    .registers 5

    const/16 v2, 0x64

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleWriteSpecialMode()V
    .registers 5

    const/16 v2, 0x6a

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public getAspectRatio(Ljava/lang/String;)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_8
.end method

.method public getDefaultAspectType(Ljava/lang/String;)I
    .registers 6

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2c

    move-result v1

    monitor-exit v2

    return v1

    :cond_19
    monitor-exit v2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->resolveDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2f

    monitor-exit v2

    return v0

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getNotchConfig(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    move-result v2

    if-eqz v2, :cond_25

    const/16 v0, 0x80

    :cond_1e
    :goto_1e
    monitor-exit v3

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultNotchConfig(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v0, v2

    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_1e

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isRestrictAspect(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getPackageMode(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method saveCompatModes()V
    .registers 15

    const/4 v13, 0x1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v11, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_9
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_c1

    monitor-exit v11

    const/4 v3, 0x0

    :try_start_10
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v10, "compat-packages"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "config"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "notifySuggestApps"

    iget-boolean v11, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "config"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5e
    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_c4

    const/4 v9, 0x1

    :goto_7d
    invoke-direct {p0, v7}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v10

    if-eq v9, v10, :cond_5e

    invoke-virtual {p0, v7}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v13, :cond_5e

    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_a9} :catch_aa
    .catchall {:try_start_10 .. :try_end_a9} :catchall_df

    goto :goto_5e

    :catch_aa
    move-exception v1

    :try_start_ab
    const-string/jumbo v10, "MiuiCompatModePackages"

    const-string/jumbo v11, "Error writing compat packages"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_bb

    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_bb
    .catchall {:try_start_ab .. :try_end_bb} :catchall_df

    :cond_bb
    if-eqz v3, :cond_c0

    :try_start_bd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_dd

    :cond_c0
    :goto_c0
    return-void

    :catchall_c1
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_c4
    const/4 v9, 0x0

    goto :goto_7d

    :cond_c6
    :try_start_c6
    const-string/jumbo v10, "compat-packages"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d5} :catch_aa
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_df

    if-eqz v3, :cond_c0

    :try_start_d7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_c0

    :catch_db
    move-exception v0

    goto :goto_c0

    :catch_dd
    move-exception v0

    goto :goto_c0

    :catchall_df
    move-exception v10

    if-eqz v3, :cond_e5

    :try_start_e2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    :cond_e5
    :goto_e5
    throw v10

    :catch_e6
    move-exception v0

    goto :goto_e5
.end method

.method saveSpecialModeFile()V
    .registers 14

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v11, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_8
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_9b

    monitor-exit v11

    const/4 v3, 0x0

    :try_start_f
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v10, "special-mode"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_9e

    const/4 v9, 0x1

    :goto_61
    if-eqz v9, :cond_42

    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_83} :catch_84
    .catchall {:try_start_f .. :try_end_83} :catchall_b9

    goto :goto_42

    :catch_84
    move-exception v1

    :try_start_85
    const-string/jumbo v10, "MiuiCompatModePackages"

    const-string/jumbo v11, "Error writing compat packages"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_95

    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_95
    .catchall {:try_start_85 .. :try_end_95} :catchall_b9

    :cond_95
    if-eqz v3, :cond_9a

    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_b7

    :cond_9a
    :goto_9a
    return-void

    :catchall_9b
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_9e
    const/4 v9, 0x0

    goto :goto_61

    :cond_a0
    :try_start_a0
    const-string/jumbo v10, "special-mode"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_af} :catch_84
    .catchall {:try_start_a0 .. :try_end_af} :catchall_b9

    if-eqz v3, :cond_9a

    :try_start_b1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_9a

    :catch_b5
    move-exception v0

    goto :goto_9a

    :catch_b7
    move-exception v0

    goto :goto_9a

    :catchall_b9
    move-exception v10

    if-eqz v3, :cond_bf

    :try_start_bc
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    :cond_bf
    :goto_bf
    throw v10

    :catch_c0
    move-exception v0

    goto :goto_bf
.end method

.method public setNotchSpecialMode(Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isNotchSpecailMode(Ljava/lang/String;)Z

    move-result v0

    if-eq p2, v0, :cond_27

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    if-eqz p2, :cond_28

    const/4 v1, 0x1

    :goto_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2a

    monitor-exit v2

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWriteSpecialMode()V

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_27
    return-void

    :cond_28
    const/4 v1, 0x0

    goto :goto_e

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setRestrictAspect(Ljava/lang/String;Z)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    if-eq p2, v0, :cond_27

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    if-eqz p2, :cond_28

    const/4 v1, 0x1

    :goto_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2a

    monitor-exit v2

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWrite()V

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_27
    return-void

    :cond_28
    const/4 v1, 0x0

    goto :goto_e

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

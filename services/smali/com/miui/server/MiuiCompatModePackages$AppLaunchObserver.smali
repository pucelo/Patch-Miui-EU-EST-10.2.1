.class abstract Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;
.super Landroid/app/IMiuiProcessObserver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AppLaunchObserver"
.end annotation


# instance fields
.field private mRunningFgActivityProcesses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/IMiuiProcessObserver;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onFirstLaunch(Ljava/lang/String;)V
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7

    if-eqz p3, :cond_1e

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->onFirstLaunch(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public onImportanceChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProcessStateChanged(III)V
    .registers 4

    return-void
.end method

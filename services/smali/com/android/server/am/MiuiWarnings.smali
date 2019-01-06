.class public Lcom/android/server/am/MiuiWarnings;
.super Ljava/lang/Object;
.source "MiuiWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;,
        Lcom/android/server/am/MiuiWarnings$WarningCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MiuiWarnings;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/MiuiWarnings;-><init>()V

    return-void
.end method

.method private checkService()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MiuiWarnings;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/MiuiWarnings;->mService:Lcom/android/server/am/ActivityManagerService;

    :cond_f
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MiuiWarnings;
    .registers 1

    invoke-static {}, Lcom/android/server/am/MiuiWarnings$NoPreloadHolder;->-get0()Lcom/android/server/am/MiuiWarnings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MiuiWarnings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public showWarningDialog(Ljava/lang/String;Lcom/android/server/am/MiuiWarnings$WarningCallback;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/am/MiuiWarnings;->checkService()V

    iget-object v1, p0, Lcom/android/server/am/MiuiWarnings;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v0, Lcom/android/server/am/MiuiWarningDialog;

    iget-object v1, p0, Lcom/android/server/am/MiuiWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/am/MiuiWarningDialog;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/server/am/MiuiWarnings$WarningCallback;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, 0x1

    return v1

    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.class public Lcom/android/server/statusbar/StatusBarManagerServiceInjector;
.super Ljava/lang/Object;
.source "StatusBarManagerServiceInjector.java"


# static fields
.field private static final BOOST_PRIORITY:I = -0xa

.field private static final SYSTEMUI_BOOST_TAG:Ljava/lang/String; = "systemui_boost"

.field private static sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;


# instance fields
.field private mOldRenderPriority:I

.field private mOldUIPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    invoke-direct {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;-><init>()V

    sput-object v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/statusbar/StatusBarManagerServiceInjector;
    .registers 1

    sget-object v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    return-object v0
.end method


# virtual methods
.method public boostSystemUI(Z)V
    .registers 9

    const/16 v6, -0xa

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification panel visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getRenderThreadTidByPid(I)I

    move-result v2

    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ui thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "render thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_64

    const-string/jumbo v3, "systemui_boost"

    const-string/jumbo v4, "render-thread tid = 0, do not boost"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_64
    if-eqz p1, :cond_106

    :try_start_66
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ui thread old priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_88} :catch_c0

    :try_start_88
    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "render thread old priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_aa} :catch_e3

    const-string/jumbo v3, "systemui_boost"

    invoke-static {v1, v6, v3}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string/jumbo v3, "systemui_boost"

    invoke-static {v2, v6, v3}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string/jumbo v3, "systemui_boost"

    const-string/jumbo v4, "ui thread and render thread are boosted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bf
    return-void

    :catch_c0
    move-exception v0

    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ui thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_e3
    move-exception v0

    const-string/jumbo v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "render thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_106
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    const-string/jumbo v4, "systemui_boost"

    invoke-static {v1, v3, v4}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    const-string/jumbo v4, "systemui_boost"

    invoke-static {v2, v3, v4}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string/jumbo v3, "systemui_boost"

    const-string/jumbo v4, "ui thread and render thread are reset"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf
.end method

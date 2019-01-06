.class public Lcom/android/systemui/volume/VolumeDialogComponent;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogComponent$1;
    }
.end annotation


# instance fields
.field private final mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field private mDialog:Lcom/android/systemui/plugins/VolumeDialog;

.field private final mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

.field private final mSysui:Lcom/android/systemui/SystemUI;

.field private final mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private mVolumePolicy:Landroid/media/VolumePolicy;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialogComponent;Lcom/android/systemui/plugins/VolumeDialog;)Lcom/android/systemui/plugins/VolumeDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->createDefault()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/InterestingConfigChanges;

    const v1, -0x3ffffffc    # -2.000001f

    invoke-direct {v0, v1}, Lcom/android/systemui/util/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    new-instance v0, Landroid/media/VolumePolicy;

    const/16 v1, 0x190

    invoke-direct {v0, v4, v4, v4, v1}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setUserActivityListener(Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;)V

    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogComponent$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$2;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Lcom/android/systemui/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogComponent$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$3;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Lcom/android/systemui/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->applyConfiguration()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_volume_down_silent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_volume_up_silent"

    aput-object v2, v1, v4

    const-string/jumbo v2, "sysui_do_not_disturb"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private applyConfiguration()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->showDndTile(Z)V

    return-void
.end method

.method private createDefault()Lcom/android/systemui/plugins/VolumeDialog;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setStreamImportant(IZ)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setStreamImportant(IZ)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setAutomute(Z)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setSilentMode(Z)V

    return-object v0
.end method

.method private setVolumePolicy(ZZZI)V
    .locals 2

    new-instance v0, Landroid/media/VolumePolicy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    return-void
.end method


# virtual methods
.method public dismissNow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->dismiss()V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    instance-of v0, v0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    check-cast v0, Lcom/android/systemui/Dumpable;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->reload()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, "sysui_volume_down_silent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "sysui_volume_up_silent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p2, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v3, "sysui_do_not_disturb"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_8

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onUserActivity()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->register()V

    return-void
.end method

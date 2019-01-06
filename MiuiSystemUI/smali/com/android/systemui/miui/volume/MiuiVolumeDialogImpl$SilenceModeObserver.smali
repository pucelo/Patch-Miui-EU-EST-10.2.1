.class final Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;
.super Landroid/database/ContentObserver;
.source "MiuiVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SilenceModeObserver"
.end annotation


# instance fields
.field private final RELIEVE_SOUND:Ljava/io/File;

.field private final SILENCE_MODE:Landroid/net/Uri;

.field private mLastToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSilenceMode:I

.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->SILENCE_MODE:Landroid/net/Uri;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/relieve.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->RELIEVE_SOUND:Ljava/io/File;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mLastToast:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private shouldPlayUnmuteSound()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unmute_sound_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method private showGuideDialog()V
    .locals 5

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$string;->miui_guide_dialog_message:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$string;->miui_guide_dialog_button_positive_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$string;->miui_guide_dialog_button_negative_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$2;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0xc0400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mSilenceMode:I

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mSilenceMode:I

    iput v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mSilenceMode:I

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v8}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v8

    invoke-virtual {v7, v1, v8}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setSilenceMode(IZ)V

    if-eq v3, v1, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->shouldPlayUnmuteSound()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->RELIEVE_SOUND:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->RELIEVE_SOUND:Ljava/io/File;

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v7, v8, v9}, Lcom/android/systemui/Util;->playRingtoneAsync(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_0
    if-eq v3, v1, :cond_3

    const-class v7, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x4

    if-ne v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "volume_guide_dialog_already_show"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "volume_guide_dialog_already_show"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->showGuideDialog()V

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mute_music_at_silent"

    const/4 v9, -0x3

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_4

    const/4 v2, 0x1

    :goto_0
    const/4 v6, 0x0

    if-nez v1, :cond_7

    if-eqz v2, :cond_5

    sget v4, Lcom/android/systemui/miui/volume/R$string;->miui_toast_zen_standard_to_off:I

    :goto_1
    if-ne v3, v11, :cond_6

    sget v6, Lcom/android/systemui/miui/volume/R$string;->miui_toast_zen_dnd_to_off:I

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mLastToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mLastToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->cancel()V

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v10}, Lcom/android/systemui/Util;->showSystemOverlayToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->mLastToast:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    sget v4, Lcom/android/systemui/miui/volume/R$string;->miui_toast_zen_standard_to_off_when_shield_media:I

    goto :goto_1

    :cond_6
    move v6, v4

    goto :goto_2

    :cond_7
    if-ne v1, v11, :cond_8

    sget v6, Lcom/android/systemui/miui/volume/R$string;->miui_toast_zen_to_dnd:I

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    sget v6, Lcom/android/systemui/miui/volume/R$string;->miui_toast_zen_to_standard:I

    goto :goto_2

    :cond_9
    sget v6, Lcom/android/systemui/miui/volume/R$string;->miui_toast_zen_to_standard_when_shield_media:I

    goto :goto_2
.end method

.method public register()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->SILENCE_MODE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.class public final Landroid/security/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final BG_COLOR:Ljava/lang/String; = "com.android.settings.bgColor"

.field public static final DISABLE_ACCESS_CONTROL:I = 0x1

.field public static final DISABLE_AC_FOR_PRIVACY_MODE:I = 0x3

.field public static final DISABLE_PRIVACY_MODE:I = 0x4

.field public static final ENABLE_AC_FOR_PRIVACY_MODE:I = 0x2

.field public static final EXTRA_CONFIRM_PURPOSE:Ljava/lang/String; = "confirm_purpose"

.field public static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer"

.field public static final FOOTER_TEXT_COLOR:Ljava/lang/String; = "com.android.settings.footerTextColor"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer_wrong"

.field public static final FORGET_PATTERN_COLOR:Ljava/lang/String; = "com.android.settings.forgetPatternColor"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header_wrong"

.field public static final LOCK_BTN_WHITE:Ljava/lang/String; = "com.android.settings.lockBtnWhite"

.field public static final LOCK_SETTINGS_TYPE_AC:I = 0x0

.field public static final LOCK_SETTINGS_TYPE_GALLERY:I = 0x2

.field public static final LOCK_SETTINGS_TYPE_SMS:I = 0x1

.field private static final NO_REQUEST_FOR_ACTIVITY_RESULT:I = -0x400

.field public static final SHOW_FORGET_PASSWORD:Ljava/lang/String; = "com.android.settings.forgetPassword"

.field public static final TITLE_COLOR:Ljava/lang/String; = "com.android.settings.titleColor"

.field public static final USERID_TO_CONFIRM_PASSWORD:Ljava/lang/String; = "com.android.settings.userIdToConfirm"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-void
.end method

.method private confirmPassword(I)Z
    .registers 5

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, -0x400

    if-ne p1, v1, :cond_2e

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2c
    const/4 v1, 0x1

    return v1

    :cond_2e
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2c

    :cond_38
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2c
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->savedPatternExists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    :cond_18
    const/4 v1, 0x0

    return v1

    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, -0x400

    if-ne p1, v1, :cond_44

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_42
    const/4 v1, 0x1

    return v1

    :cond_44
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_42

    :cond_4e
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_42
.end method


# virtual methods
.method public isACLockEnabled()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_lock_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_17

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    :cond_17
    return v0
.end method

.method public isPasswordForPrivacyModeEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "password_for_privacymode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public isPrivacyModeEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "privacy_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public isPrivacyPasswordEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "privacy_password_is_open"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public isPrivateGalleryEnabled()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_gallery_lock_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_17

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    :cond_17
    return v0
.end method

.method public isPrivateSmsEnabled()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_sms_lock_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_17

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    :cond_17
    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    if-nez v1, :cond_b

    return v2

    :cond_b
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_26

    :goto_1b
    return v0

    :sswitch_1c
    invoke-direct {p0, p1, p2, p3}, Landroid/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1b

    :sswitch_21
    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_1b

    :sswitch_data_26
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_21
        0x40000 -> :sswitch_21
        0x50000 -> :sswitch_21
        0x60000 -> :sswitch_21
    .end sparse-switch
.end method

.method public launchConfirmationActivity(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7

    const/16 v3, -0x400

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    return v1

    :cond_9
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_24

    :goto_18
    return v0

    :sswitch_19
    invoke-direct {p0, v3, p1, p2}, Landroid/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_18

    :sswitch_1e
    invoke-direct {p0, v3}, Landroid/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_18

    nop

    :sswitch_data_24
    .sparse-switch
        0x10000 -> :sswitch_19
        0x20000 -> :sswitch_1e
        0x40000 -> :sswitch_1e
        0x50000 -> :sswitch_1e
        0x60000 -> :sswitch_1e
    .end sparse-switch
.end method

.method public setACLockEnabled(Z)V
    .registers 5

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_lock_enabled"

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_17

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    :cond_17
    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setPasswordForPrivacyModeEnabled(Z)V
    .registers 5

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "password_for_privacymode"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setPrivacyModeEnabled(Z)V
    .registers 5

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "privacy_mode_enabled"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setPrivacyPasswordEnable(Z)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    return-void
.end method

.method public setPrivacyPasswordEnabledAsUser(ZI)V
    .registers 6

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "privacy_password_is_open"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setPrivateGalleryEnabled(Z)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivateGalleryEnabledAsUser(ZI)V

    return-void
.end method

.method public setPrivateGalleryEnabledAsUser(ZI)V
    .registers 6

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_gallery_lock_enabled"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setPrivateSmsEnabled(Z)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivateSmsEnabledAsUser(ZI)V

    return-void
.end method

.method public setPrivateSmsEnabledAsUser(ZI)V
    .registers 6

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_sms_lock_enabled"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public utils()Landroid/security/MiuiLockPatternUtils;
    .registers 2

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method

.class Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiSecurityInputMethodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiSecurityInputMethodHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field mRegistered:Z

.field mUserId:I

.field final synthetic this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;


# direct methods
.method constructor <init>(Lcom/android/server/MiuiSecurityInputMethodHelper;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "enable_miui_security_ime"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-static {v3}, Lcom/android/server/MiuiSecurityInputMethodHelper;->-get1(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_12
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    iget-object v5, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-static {v5}, Lcom/android/server/MiuiSecurityInputMethodHelper;->-get1(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enable_miui_security_ime"

    iget-object v7, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-static {v7}, Lcom/android/server/MiuiSecurityInputMethodHelper;->-get1(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_66

    :goto_3c
    invoke-static {v4, v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->-set0(Lcom/android/server/MiuiSecurityInputMethodHelper;Z)Z

    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-static {v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->-wrap0(Lcom/android/server/MiuiSecurityInputMethodHelper;)V

    const-string/jumbo v1, "MiuiSecurityInputMethodHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable status change: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-static {v4}, Lcom/android/server/MiuiSecurityInputMethodHelper;->-get0(Lcom/android/server/MiuiSecurityInputMethodHelper;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_12 .. :try_end_64} :catchall_68

    :cond_64
    monitor-exit v3

    return-void

    :cond_66
    move v1, v2

    goto :goto_3c

    :catchall_68
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method registerContentObserverLocked(I)V
    .registers 5

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mUserId:I

    if-ne v1, p1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->this$0:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-static {v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->-get1(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    if-eqz v1, :cond_24

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    :cond_24
    iget v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2a

    iput p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mUserId:I

    :cond_2a
    const-string/jumbo v1, "enable_miui_security_ime"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->mRegistered:Z

    return-void
.end method

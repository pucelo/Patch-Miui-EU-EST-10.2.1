.class public Lcom/android/server/MiuiSecurityInputMethodHelper;
.super Ljava/lang/Object;
.source "MiuiSecurityInputMethodHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final MIUI_SEC_INPUT_METHOD_APP_PKG_NAME:Ljava/lang/String; = "com.miui.securityinputmethod"

.field public static final NUMBER_PASSWORD:I = 0x12

.field public static final SUPPORT_SEC_INPUT_METHOD:Z

.field public static final TAG:Ljava/lang/String; = "MiuiSecurityInputMethodHelper"

.field public static final TEXT_MASK:I = 0xfff

.field public static final TEXT_PASSWORD:I = 0x81

.field public static final TEXT_VISIBLE_PASSWORD:I = 0x91

.field public static final TEXT_WEB_PASSWORD:I = 0xe1

.field public static final WEB_EDIT_TEXT:I = 0xa0


# instance fields
.field private mSecEnabled:Z

.field private mService:Lcom/android/server/InputMethodManagerService;

.field private mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/MiuiSecurityInputMethodHelper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/MiuiSecurityInputMethodHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/MiuiSecurityInputMethodHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->updateFromSettingsLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.miui.has_security_keyboard"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_f
    sput-boolean v0, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    return-void
.end method

.method private getSecMethodIdLocked()Ljava/lang/String;
    .registers 4

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_2b
    const/4 v2, 0x0

    return-object v2
.end method

.method private isEditorInDefaultImeApp(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    :goto_1f
    return v3

    :cond_20
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method private static isPasswdInputType(I)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    and-int/lit16 v2, p0, 0xa0

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_11

    and-int/lit16 v2, p0, 0xfff

    const/16 v3, 0xe1

    if-ne v2, v3, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    and-int/lit16 v2, p0, 0xfff

    const/16 v3, 0x81

    if-eq v2, v3, :cond_1d

    and-int/lit16 v2, p0, 0xfff

    const/16 v3, 0x91

    if-ne v2, v3, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    and-int/lit16 v2, p0, 0xfff

    const/16 v3, 0x12

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_1d
.end method

.method private isSecMethodLocked(Ljava/lang/String;)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.miui.securityinputmethod"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private updateFromSettingsLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    :cond_21
    return-void
.end method


# virtual methods
.method filterSecMethodLocked(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_23

    sget-boolean v2, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-eqz v2, :cond_23

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_23
    return-object p1
.end method

.method mayChangeInputMethodLocked(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 14

    sget-boolean v9, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-nez v9, :cond_6

    const/4 v9, 0x0

    return v9

    :cond_6
    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v9, :cond_17

    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "input_service has no current_method_id"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_17
    if-nez p1, :cond_24

    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "editor_info is null, we cannot judge"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_24
    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v0, :cond_3f

    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "fail to find current_method_info in the map"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_3f
    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v9}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isPasswdInputType(I)Z

    move-result v9

    if-eqz v9, :cond_9c

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9c

    iget-boolean v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    if-eqz v9, :cond_9c

    invoke-direct {p0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->getSecMethodIdLocked()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9c

    invoke-direct {p0, p1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isEditorInDefaultImeApp(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v9

    xor-int/lit8 v8, v9, 0x1

    :goto_69
    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a0

    iget-boolean v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    if-eqz v9, :cond_9e

    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v9}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isPasswdInputType(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_9e

    invoke-direct {p0, p1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isEditorInDefaultImeApp(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v7

    :goto_85
    if-eqz v8, :cond_c3

    invoke-direct {p0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->getSecMethodIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a2

    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "fail to find secure_input_method in input_method_list"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_9c
    const/4 v8, 0x0

    goto :goto_69

    :cond_9e
    const/4 v7, 0x1

    goto :goto_85

    :cond_a0
    const/4 v7, 0x0

    goto :goto_85

    :cond_a2
    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iput-object v5, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v9}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v10, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    const/4 v9, 0x1

    return v9

    :cond_c3
    if-eqz v7, :cond_183

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13c

    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "something is weired, maybe the input method app are uninstalled"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_f7

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.miui.securityinputmethod"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13c

    :cond_f7
    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "fail to find a most applicable default ime"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_110

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_11b

    :cond_110
    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "there is no enabled method list"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_11b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.miui.securityinputmethod"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11f

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    :cond_13c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14d

    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "finally, we still fail to find default input method"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_14d
    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_162

    const-string/jumbo v9, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v10, "It looks like there is only miui_sec_input_method in the system"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_162
    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iput-object v6, v9, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v9}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v10, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    const/4 v9, 0x1

    return v9

    :cond_183
    const/4 v9, 0x0

    return v9
.end method

.method onSwitchUserLocked(I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->registerContentObserverLocked(I)V

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_miui_security_ime"

    iget-object v4, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_23

    :goto_20
    iput-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    return-void

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method onSystemRunningLocked()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;-><init>(Lcom/android/server/MiuiSecurityInputMethodHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->registerContentObserverLocked(I)V

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_miui_security_ime"

    iget-object v4, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_36

    :goto_33
    iput-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    return-void

    :cond_36
    move v0, v1

    goto :goto_33
.end method

.method removeSecMethod(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    sget-boolean v3, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-nez v3, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_30

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.miui.securityinputmethod"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_30
    return-void
.end method

.method shouldHideImeSwitcherLocked()Z
    .registers 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_f
    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

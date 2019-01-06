.class final Landroid/inputmethodservice/InputMethodService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mService:Landroid/inputmethodservice/InputMethodService;

.field private mShowImeWithHardKeyboard:I


# direct methods
.method static synthetic -wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->shouldShowImeWithHardKeyboard()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method public static createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .registers 5

    new-instance v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v0
.end method

.method private shouldShowImeWithHardKeyboard()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x2

    :goto_16
    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    :cond_18
    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    packed-switch v0, :pswitch_data_3e

    const-string/jumbo v0, "InputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected mShowImeWithHardKeyboard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3a
    move v0, v1

    goto :goto_16

    :pswitch_3c
    return v1

    :pswitch_3d
    return v3

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    :goto_1e
    iput v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-wrap5(Landroid/inputmethodservice/InputMethodService;)V

    :cond_25
    return-void

    :cond_26
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SettingsObserver{mShowImeWithHardKeyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

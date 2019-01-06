.class public Landroid/view/accessibility/CaptioningManager;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/CaptioningManager$1;,
        Landroid/view/accessibility/CaptioningManager$CaptionStyle;,
        Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;,
        Landroid/view/accessibility/CaptioningManager$MyContentObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:I = 0x0

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field private static final DEFAULT_PRESET:I


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyleChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyEnabledChanged()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyFontScaleChanged()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyLocaleChanged()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyUserStyleChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/accessibility/CaptioningManager$1;

    invoke-direct {v1, p0}, Landroid/view/accessibility/CaptioningManager$1;-><init>(Landroid/view/accessibility/CaptioningManager;)V

    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/view/accessibility/CaptioningManager$MyContentObserver;

    invoke-direct {v1, p0, v0}, Landroid/view/accessibility/CaptioningManager$MyContentObserver;-><init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private notifyEnabledChanged()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onEnabledChanged(Z)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_20
    monitor-exit v4

    return-void
.end method

.method private notifyFontScaleChanged()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onFontScaleChanged(F)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_20
    monitor-exit v4

    return-void
.end method

.method private notifyLocaleChanged()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onLocaleChanged(Ljava/util/Locale;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_20
    monitor-exit v4

    return-void
.end method

.method private notifyUserStyleChanged()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_20
    monitor-exit v4

    return-void
.end method

.method private registerObserver(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .registers 4

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo v0, "accessibility_captioning_enabled"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_foreground_color"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_background_color"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_window_color"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_edge_type"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_edge_color"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_typeface"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_font_scale"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_locale"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility_captioning_preset"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    :cond_47
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    monitor-exit v1

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getFontScale()F
    .registers 4

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "accessibility_captioning_font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    packed-switch v2, :pswitch_data_38

    :cond_17
    const/4 v2, 0x0

    return-object v2

    :pswitch_19
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_26
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_30
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v2

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_30
        :pswitch_26
        :pswitch_19
    .end packed-switch
.end method

.method public final getRawLocale()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "accessibility_captioning_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawUserStyle()I
    .registers 4

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "accessibility_captioning_preset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    return-object v1

    :cond_e
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public final isEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "accessibility_captioning_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .registers 5

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

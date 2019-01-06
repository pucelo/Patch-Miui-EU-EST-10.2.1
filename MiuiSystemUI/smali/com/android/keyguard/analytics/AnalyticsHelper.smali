.class public Lcom/android/keyguard/analytics/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# static fields
.field private static final IS_INTERNATIONAL_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static record(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static record(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static recordDownloadLockScreenMagazine(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_download_lockscreen_magazine"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordEnterLeftview(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "is_lockscreen_wallpaper_open"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_enter_left_view"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordEnum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordLeftLockscreenMagazineButton(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "is_lockscreen_wallpaper_open"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_left_view_lockscreen_magazine_button"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLeftViewItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    invoke-static {v1, p0, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordScreenOn(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "is_lockscreen_wallpaper_open"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_screenon"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordUnlockWay(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "miui_keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlock keyguard by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_unlock_way"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCheckPasswordFailedException(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "exception"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_check_password_failed_exception"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFaceUnlockFailCount(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "hasface"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "face_unlock_state_fail_count"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFaceUnlockLocked()V
    .locals 2

    const-string/jumbo v0, "systemui_keyguard"

    const-string/jumbo v1, "face_unlock_locked"

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

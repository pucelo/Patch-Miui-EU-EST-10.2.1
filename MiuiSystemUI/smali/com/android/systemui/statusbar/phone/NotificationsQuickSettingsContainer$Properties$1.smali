.class final Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$1;
.super Landroid/util/Property;
.source "NotificationsQuickSettingsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->-get0(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$1;->get(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Ljava/lang/Float;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->-wrap0(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;FZ)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$1;->set(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Ljava/lang/Float;)V

    return-void
.end method

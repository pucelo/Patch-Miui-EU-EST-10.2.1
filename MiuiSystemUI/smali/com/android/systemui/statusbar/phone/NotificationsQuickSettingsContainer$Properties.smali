.class final Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;
.super Ljava/lang/Object;
.source "NotificationsQuickSettingsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$1;,
        Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$2;
    }
.end annotation


# static fields
.field private static PROPERTY_CONTENT_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static PROPERTY_CONTENT_ALPHA_WITH_HEADER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/util/Property;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;->PROPERTY_CONTENT_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get1()Landroid/util/Property;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;->PROPERTY_CONTENT_ALPHA_WITH_HEADER:Landroid/util/Property;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "contentAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;->PROPERTY_CONTENT_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "contentAlphaWithHeader"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;->PROPERTY_CONTENT_ALPHA_WITH_HEADER:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

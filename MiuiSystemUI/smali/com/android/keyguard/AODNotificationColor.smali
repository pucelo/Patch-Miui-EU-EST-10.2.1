.class public Lcom/android/keyguard/AODNotificationColor;
.super Ljava/lang/Object;
.source "AODNotificationColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AODNotificationColor$ColorItem;
    }
.end annotation


# static fields
.field private static sColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/AODNotificationColor$ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefault:Lcom/android/keyguard/AODNotificationColor$ColorItem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/keyguard/AODNotificationColor$ColorItem;

    const v4, 0x7f08006c

    const v5, 0x7f08006d

    invoke-direct {v0, v4, v5}, Lcom/android/keyguard/AODNotificationColor$ColorItem;-><init>(II)V

    new-instance v1, Lcom/android/keyguard/AODNotificationColor$ColorItem;

    const v4, 0x7f0800cb

    const v5, 0x7f0800cc

    invoke-direct {v1, v4, v5}, Lcom/android/keyguard/AODNotificationColor$ColorItem;-><init>(II)V

    new-instance v2, Lcom/android/keyguard/AODNotificationColor$ColorItem;

    const v4, 0x7f0802fa

    const v5, 0x7f0802fb

    invoke-direct {v2, v4, v5}, Lcom/android/keyguard/AODNotificationColor$ColorItem;-><init>(II)V

    new-instance v3, Lcom/android/keyguard/AODNotificationColor$ColorItem;

    const v4, 0x7f080737

    const v5, 0x7f080738

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/AODNotificationColor$ColorItem;-><init>(II)V

    sput-object v2, Lcom/android/keyguard/AODNotificationColor;->sDefault:Lcom/android/keyguard/AODNotificationColor$ColorItem;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.tencent.mm"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.tencent.mobileqq"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.whatsapp"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.facebook.orca"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "jp.naver.line.android"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.google.android.gm"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.android.email"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.google.android.calendar"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.android.calendar"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.android.server.telecom"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    const-string/jumbo v5, "com.android.mms"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorItem(Ljava/lang/String;)Lcom/android/keyguard/AODNotificationColor$ColorItem;
    .locals 1

    sget-object v0, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/AODNotificationColor;->sDefault:Lcom/android/keyguard/AODNotificationColor$ColorItem;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/AODNotificationColor;->sColorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AODNotificationColor$ColorItem;

    goto :goto_0
.end method

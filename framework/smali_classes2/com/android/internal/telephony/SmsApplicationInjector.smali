.class public Lcom/android/internal/telephony/SmsApplicationInjector;
.super Ljava/lang/Object;
.source "SmsApplicationInjector.java"


# static fields
.field private static final IGNORE_PACKAGE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.xiaomi.xmsf"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.cloudservice"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.networkassistant"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.yellowpage"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.securitycenter"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.simactivate.service"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.mms"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.finddevice"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/SmsApplicationInjector;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/internal/telephony/SmsApplicationInjector;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public Lcom/android/systemui/util/NotificationChannels;
.super Lcom/android/systemui/SystemUI;
.source "NotificationChannels.java"


# static fields
.field public static ALERTS:Ljava/lang/String;

.field public static BATTERY:Ljava/lang/String;

.field public static GENERAL:Ljava/lang/String;

.field public static LOCATION:Ljava/lang/String;

.field public static SCREENBUTTON:Ljava/lang/String;

.field public static SCREENSHOTS:Ljava/lang/String;

.field public static STORAGE:Ljava/lang/String;

.field public static TVPIP:Ljava/lang/String;

.field public static USB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ALR"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    const-string/jumbo v0, "SCN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    const-string/jumbo v0, "GEN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    const-string/jumbo v0, "DSK"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    const-string/jumbo v0, "TPP"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    const-string/jumbo v0, "LOC"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->LOCATION:Ljava/lang/String;

    const-string/jumbo v0, "SCB"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENBUTTON:Ljava/lang/String;

    const-string/jumbo v0, "USB"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->USB:Ljava/lang/String;

    const-string/jumbo v0, "BAT"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method public static createAll(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v3, 0x3

    const/4 v9, 0x1

    const/4 v4, 0x2

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x7

    new-array v5, v2, [Landroid/app/NotificationChannelCompat;

    new-instance v2, Landroid/app/NotificationChannelCompat;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    const v7, 0x7f11043a

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v10}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-instance v2, Landroid/app/NotificationChannelCompat;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    const v7, 0x7f110442

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v4}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v9

    new-instance v2, Landroid/app/NotificationChannelCompat;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    const v7, 0x7f11043f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v9}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v4

    new-instance v6, Landroid/app/NotificationChannelCompat;

    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    const v2, 0x7f110443

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {v6, v7, v8, v2}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v6, v5, v3

    new-instance v2, Landroid/app/NotificationChannelCompat;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENBUTTON:Ljava/lang/String;

    const v7, 0x7f110441

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v4}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v10

    new-instance v2, Landroid/app/NotificationChannelCompat;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->LOCATION:Ljava/lang/String;

    const v7, 0x7f110440

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v4}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v11

    new-instance v2, Landroid/app/NotificationChannelCompat;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->USB:Ljava/lang/String;

    const v6, 0x7f110446

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6, v3}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x6

    aput-object v2, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/NotificationChannelCompat;->createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V

    new-instance v0, Landroid/app/NotificationChannelCompat;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    const v3, 0x7f11043b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v10}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v9}, Landroid/app/NotificationChannelCompat;->enableLights(Z)V

    invoke-static {v1, v0}, Landroid/app/NotificationChannelCompat;->createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannelCompat;)V

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/NotificationChannelCompat;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    const v4, 0x7f110445

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v11}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {v1, v2}, Landroid/app/NotificationChannelCompat;->createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannelCompat;)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    return-void
.end method

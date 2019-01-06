.class public Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static sFold:Z

.field private static sFoldAnimating:Z

.field private static sIsLastQsCovered:Z

.field private static sNotificationStyle:I

.field private static sUserFold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFold:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sIsLastQsCovered:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFoldAnimating:Z

    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sNotificationStyle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAppIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasLargeIcon(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public static applyLegacyRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getRowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getRowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->isNotificationHeader(Landroid/view/View;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0x7f0a009e

    invoke-virtual {v0, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static applyRightIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasLargeIcon(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/miui/AppIconsManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/AppIconsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/miui/AppIconsManager;->getIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getRowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static canSendNotificationForTargetPkg(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.keyguard"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.miui.systemAdSolution"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.miui.msa.global"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fold(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFold:Z

    return-void
.end method

.method public static getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "miui.category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getFoldTranslationDirection(ZF)F
    .locals 3

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v1

    xor-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static getHiddenText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const v0, 0x7f110450

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f11044f

    goto :goto_0
.end method

.method public static getHybridAppName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "miui.substName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static getMessageClassName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1}, Landroid/app/MiuiNotification;->getMessageClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public static getMessageId(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "message_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "adid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    return-object v4
.end method

.method public static getNotificationStyle()I
    .locals 1

    sget v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sNotificationStyle:I

    return v0
.end method

.method public static getPackageContext(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Landroid/content/Context;
    .locals 2

    invoke-virtual {p1, p0}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiui/R$style;->Theme_Light_RemoteViews:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    return-object v0
.end method

.method public static getPkgImportance(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getImportance(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isPhoneNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.android.contacts.activities.TwelveKeyDialer.png"

    invoke-static {p0, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    return-object v2

    :cond_0
    const-class v2, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->isUsbNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    const-class v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/systemui/miui/AppIconsManager;->getIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isImeNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    const-class v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/systemui/miui/AppIconsManager;->getIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isSubstituteNotification()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->shouldUseAppIcon(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-gez v1, :cond_4

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    :cond_4
    const-class v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/systemui/miui/AppIconsManager;->getAppIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_5
    return-object v4
.end method

.method public static getSmallIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Icon;
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->shouldSubstituteSmallIcon(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->shouldUseAppIcon(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-gez v1, :cond_1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    :cond_1
    const-class v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/AppIconsManager;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/systemui/miui/AppIconsManager;->getAppIconBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2
.end method

.method public static getUid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)I
    .locals 6

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->canSendNotificationForTargetPkg(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NotificationUtil"

    const-string/jumbo v4, "error getting uid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v3

    return v3
.end method

.method public static getUserFoldLinesCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static hasLargeIcon(Landroid/app/Notification;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasProgressbar(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.progressMax"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.progressIndeterminate"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasSmallIcon(Landroid/app/Notification;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCts(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.android.cts.verifier"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isExpandingEnabled(Z)Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFold()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFold:Z

    return v0
.end method

.method public static isFoldAnimating()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFoldAnimating:Z

    return v0
.end method

.method public static isGrayscaleIcon(Landroid/app/Notification;)Z
    .locals 3

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "miui.isGrayscaleIcon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isImeNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    const-string/jumbo v3, "android"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x10405b0

    if-eq v0, v3, :cond_0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static isInCallUINotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    const-string/jumbo v0, "com.android.incallui"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLastQsCovered()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sIsLastQsCovered:Z

    return v0
.end method

.method public static isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/app/NotificationCompat;->isMediaNotification(Landroid/app/Notification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMissedCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.android.server.telecom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.miui.voip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v1, "missed_call"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public static isNotificationStyleChanged(I)Z
    .locals 2

    sget v1, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sNotificationStyle:I

    if-eq v1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput p0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sNotificationStyle:I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhoneNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.server.telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPkgInFoldWhiteList(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.miui.securitycenter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.lbe.security.miui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPkgWontAutoBundle(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.miui.systemAdSolution"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUserFold()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    return v0
.end method

.method public static isXmsf(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXmsfCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lastQsCovered(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sIsLastQsCovered:Z

    return-void
.end method

.method public static needRestatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v3}, Landroid/app/MiuiNotification;->getMessageCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v3}, Landroid/app/MiuiNotification;->getMessageCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasProgressbar(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needStatBadgeNum(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static setFoldAnimating(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFoldAnimating:Z

    return-void
.end method

.method public static setPkgImportance(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiui/util/NotificationFilterHelper;->setImportance(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static shouldSubstituteSmallIcon(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isSubstituteNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isGrayscaleIcon(Landroid/app/Notification;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseAppIcon(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_use_app_icon"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static showGoogleStyle()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sNotificationStyle:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showMiuiStyle()Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sNotificationStyle:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static userFold(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    :goto_0
    return-void

    :cond_0
    if-gez p0, :cond_1

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->allowFold()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    goto :goto_0
.end method

.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final LIGHTNESS_TEXT_DIFFERENCE_DARK:I = -0xa

.field private static final LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I = 0x14

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private mActionBarColor:I

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundColor:I

.field private mBackgroundColorHint:I

.field private mCachedAmbientColor:I

.field private mCachedAmbientColorIsFor:I

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContext:Landroid/content/Context;

.field private mForegroundColor:I

.field private mInNightMode:Z

.field private mIsLegacy:Z

.field private mIsLegacyInitialized:Z

.field private mN:Landroid/app/Notification;

.field private mOriginalActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mParams:Landroid/app/Notification$StandardTemplateParams;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryTextColor:I

.field private mRebuildStyledRemoteViews:Z

.field private mSecondaryTextColor:I

.field private mStyle:Landroid/app/Notification$Style;

.field private mTextColorsAreForBackground:I

.field private mTintActionButtons:Z

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/app/Notification$Builder;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Landroid/app/Notification$Builder;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Landroid/app/Notification$Builder;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Landroid/app/Notification$Builder;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap16(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap18(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)Z
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;)Z
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->shouldTintActionButtons()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "notifications.only_title"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 15

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    new-instance v7, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iput v8, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    new-instance v7, Landroid/app/Notification$StandardTemplateParams;

    invoke-direct {v7, v11}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$StandardTemplateParams;)V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    iput v8, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x11200b9

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    const v7, 0x1120064

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    const/16 v10, 0x20

    if-ne v7, v10, :cond_88

    move v7, v8

    :goto_60
    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    :cond_62
    if-nez p2, :cond_8a

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x18

    if-ge v7, v10, :cond_7f

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "android.showWhen"

    invoke-virtual {v7, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7f
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v9, v7, Landroid/app/Notification;->priority:I

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v9, v7, Landroid/app/Notification;->visibility:I

    :cond_87
    :goto_87
    return-void

    :cond_88
    move v7, v9

    goto :goto_60

    :cond_8a
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v7, :cond_9b

    iget-object v7, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_9b
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "android.people"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b8

    iget-object v7, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.people"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_b8
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-nez v7, :cond_cd

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    if-eqz v7, :cond_cd

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_cd
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v7}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-nez v7, :cond_e2

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_e2

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_e2
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "android.template"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    invoke-static {v6}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_115

    const-string/jumbo v7, "Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown style class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    :cond_115
    const/4 v7, 0x0

    :try_start_116
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Style;

    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v7}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    if-eqz v3, :cond_87

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_135} :catch_137

    goto/16 :goto_87

    :catch_137
    move-exception v5

    const-string/jumbo v7, "Notification"

    const-string/jumbo v8, "Could not create Style"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_87
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p2}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 10

    const/4 v6, 0x0

    const v5, 0x1020016

    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;)V

    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {p0, v0, v4}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Z)V

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;)V

    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    invoke-direct {p0, v4, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v2

    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_44

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v4, :cond_3e

    invoke-direct {p0, v0, v5}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    :cond_3e
    if-eqz v2, :cond_6c

    const/4 v4, -0x2

    :goto_41
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    :cond_44
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_60

    if-eqz v2, :cond_6e

    const v3, 0x1020453

    :goto_4d
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v4, :cond_5d

    invoke-direct {p0, v0, v3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_5d
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_60
    if-nez v2, :cond_72

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v4

    :goto_68
    invoke-virtual {p0, v0, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    return-object v0

    :cond_6c
    const/4 v4, -0x1

    goto :goto_41

    :cond_6e
    const v3, 0x1020438

    goto :goto_4d

    :cond_72
    const/4 v4, 0x1

    goto :goto_68
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 14

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_70

    iget-boolean v8, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    xor-int/lit8 v4, v8, 0x1

    :goto_18
    const-string/jumbo v8, "setEmphasizedMode"

    const v9, 0x102018d

    invoke-virtual {v2, v9, v8, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-lez v0, :cond_9b

    const v8, 0x102018e

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x102018d

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-boolean v8, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v8, :cond_72

    const-string/jumbo v8, "setBackgroundColor"

    const v9, 0x102018d

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v8, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_3f
    const v8, 0x1020337

    const v9, 0x105010b

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    const/4 v8, 0x3

    if-le v0, v8, :cond_4c

    const/4 v0, 0x3

    :cond_4c
    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v0, :cond_a3

    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v8

    or-int/2addr v7, v8

    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_99

    const/4 v8, 0x1

    :goto_61
    iget-boolean v9, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {p0, v1, v4, v8, v9}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZZ)Landroid/widget/RemoteViews;

    move-result-object v3

    const v8, 0x102018d

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_70
    const/4 v4, 0x0

    goto :goto_18

    :cond_72
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    if-eqz v8, :cond_86

    const-string/jumbo v8, "setBackgroundColor"

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColor()I

    move-result v9

    const v10, 0x102018d

    invoke-virtual {v2, v10, v8, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_3f

    :cond_86
    const-string/jumbo v8, "setBackgroundColor"

    iget-object v9, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v10, 0x10600e9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    const v10, 0x102018d

    invoke-virtual {v2, v10, v8, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_3f

    :cond_99
    const/4 v8, 0x0

    goto :goto_61

    :cond_9b
    const v8, 0x102018e

    const/16 v9, 0x8

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_a3
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.remoteInputHistory"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v6

    iget-boolean v8, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v8, :cond_130

    if-eqz v7, :cond_130

    if-eqz v6, :cond_130

    array-length v8, v6

    if-lez v8, :cond_130

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_130

    const v8, 0x102033c

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x102033d

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x102033d

    invoke-direct {p0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    array-length v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_130

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_130

    const v8, 0x102033e

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x102033e

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x102033e

    invoke-direct {p0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    array-length v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_130

    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_130

    const v8, 0x102033f

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x102033f

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x102033f

    invoke-direct {p0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_130
    return-object v2
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .registers 9

    const/4 v3, -0x1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x102023c

    const/4 v2, 0x0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    const-string/jumbo v0, "setOriginalNotificationColor"

    const v1, 0x102033a

    invoke-virtual {p1, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;Z)V
    .registers 5

    const v1, 0x10201af

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_18

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_18

    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    :goto_17
    return-void

    :cond_18
    if-eqz p2, :cond_22

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    :goto_1e
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_17

    :cond_22
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    goto :goto_1e
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .registers 11

    const v2, 0x102045a

    const/4 v3, 0x0

    const v6, 0x1020456

    const v8, 0x10201fa

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.showChronometer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string/jumbo v1, "setBase"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {p1, v8, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string/jumbo v1, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v8, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    invoke-direct {p0, p1, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :goto_52
    return-void

    :cond_53
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    invoke-direct {p0, p1, v6}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    goto :goto_52

    :cond_64
    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_79

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    :goto_75
    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_52

    :cond_79
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)J

    move-result-wide v2

    goto :goto_75
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .registers 8

    const v5, 0x1020287

    const/4 v4, 0x0

    const v3, 0x1020286

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2a

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    :cond_2a
    if-nez v0, :cond_50

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_50

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_50
    if-eqz v0, :cond_69

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0, p1, v3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1, v5}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_69
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;)V
    .registers 16

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-set5(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    :cond_1b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_ab

    const v0, 0x10203b8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x10203b8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    const v13, 0x105011b

    const v0, 0x10202e0

    invoke-virtual {p1, v0, v13}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    const v0, 0x1020438

    invoke-virtual {p1, v0, v13}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    const v0, 0x102000d

    invoke-virtual {p1, v0, v13}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    invoke-direct {p0}, Landroid/app/Notification$Builder;->findReplyAction()Landroid/app/Notification$Action;

    move-result-object v12

    if-eqz v12, :cond_bb

    const/4 v0, 0x0

    :goto_5b
    const v1, 0x10203ae

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v12, :cond_ab

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x10203ae

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-static {v4}, Lcom/android/internal/util/NotificationColorUtil;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_be

    const/high16 v9, -0x1000000

    :goto_7b
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v6, 0x10203ae

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v11, -0x1

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    iget-object v0, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const v1, 0x10203b8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v0, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const v1, 0x10203ae

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v12}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v0

    const v1, 0x10203b8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    invoke-static {v12}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v0

    const v1, 0x10203ae

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    :cond_ab
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_c0

    const/4 v0, 0x0

    :goto_b4
    const v1, 0x10203b9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_bb
    const/16 v0, 0x8

    goto :goto_5b

    :cond_be
    const/4 v9, -0x1

    goto :goto_7b

    :cond_c0
    const/16 v0, 0x8

    goto :goto_b4
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Z)V

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Z)V

    if-nez p2, :cond_11

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    :cond_11
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v1, 0x1020395

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_22

    invoke-virtual {p1, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    :cond_22
    return-void
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;Z)V
    .registers 10

    const/4 v5, 0x0

    const v1, 0x1020006

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-static {v4, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/app/Notification;->-set8(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    :cond_23
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v6, v0, Landroid/app/Notification;->iconLevel:I

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method private createSummaryText()Ljava/lang/CharSequence;
    .registers 7

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    sget-boolean v4, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v4, :cond_10

    return-object v3

    :cond_10
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-nez v3, :cond_22

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.title.big"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_22
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    if-eqz v3, :cond_2f

    invoke-virtual {v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2f
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v3, :cond_4e

    if-eqz v1, :cond_4e

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v5, 0x10403ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4e
    if-eqz v1, :cond_57

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_57
    return-object v2
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .registers 28

    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_f9

    move-object/from16 v20, p1

    check-cast v20, Landroid/text/Spanned;

    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v22, v3

    :goto_28
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_f8

    aget-object v16, v19, v22

    move-object/from16 v2, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    sub-int v3, v17, v18

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v3, v4, :cond_82

    const/4 v11, 0x1

    :goto_4b
    move-object/from16 v0, v16

    instance-of v3, v0, Landroid/text/style/CharacterStyle;

    if-eqz v3, :cond_59

    move-object/from16 v3, v16

    check-cast v3, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v2

    :cond_59
    instance-of v3, v2, Landroid/text/style/TextAppearanceSpan;

    if-eqz v3, :cond_d1

    move-object v15, v2

    check-cast v15, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v21

    if-eqz v21, :cond_bc

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v9

    array-length v3, v9

    new-array v13, v3, [I

    const/4 v12, 0x0

    :goto_6e
    array-length v3, v13

    if-ge v12, v3, :cond_84

    aget v3, v9, v12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v3

    aput v3, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6e

    :cond_82
    const/4 v11, 0x0

    goto :goto_4b

    :cond_84
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-direct {v6, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v4

    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v5

    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    if-eqz v11, :cond_bc

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-direct {v4, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    aput-object v4, p3, v3

    :cond_bc
    :goto_bc
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v22, 0x1

    move/from16 v22, v3

    goto/16 :goto_28

    :cond_d1
    instance-of v3, v2, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_f5

    move-object v14, v2

    check-cast v14, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v14}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    move/from16 v0, p2

    invoke-static {v10, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v10

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    if-eqz v11, :cond_bc

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p3, v4

    goto :goto_bc

    :cond_f5
    move-object/from16 v2, v16

    goto :goto_bc

    :cond_f8
    return-object v8

    :cond_f9
    return-object p1
.end method

.method private ensureColors()V
    .registers 13

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v2

    iget v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_58

    :cond_e
    :goto_e
    iput v2, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_62

    :cond_1e
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveSecondaryColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eqz v2, :cond_4f

    iget v8, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3b

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    if-eqz v8, :cond_4f

    :cond_3b
    iget v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    invoke-static {v8, v2, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    invoke-static {v8, v2, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    :cond_4f
    :goto_4f
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveActionBarColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    :cond_57
    return-void

    :cond_58
    iget v8, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    iget v8, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    if-eq v8, v2, :cond_57

    goto :goto_e

    :cond_62
    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v8}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v6

    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v4

    cmpl-double v8, v0, v6

    if-lez v8, :cond_7e

    const/high16 v8, -0x1000000

    invoke-static {v2, v8}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v8

    if-nez v8, :cond_a7

    :cond_7e
    cmpg-double v8, v0, v6

    if-gtz v8, :cond_a9

    const/4 v8, -0x1

    invoke-static {v2, v8}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v8

    xor-int/lit8 v3, v8, 0x1

    :goto_89
    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    cmpg-double v8, v4, v8

    if-gez v8, :cond_c1

    if-eqz v3, :cond_ab

    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    const/4 v9, 0x1

    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const/16 v9, -0x14

    invoke-static {v8, v9}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_4f

    :cond_a7
    const/4 v3, 0x1

    goto :goto_89

    :cond_a9
    const/4 v3, 0x0

    goto :goto_89

    :cond_ab
    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    const/4 v9, 0x1

    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_4f

    :cond_c1
    iget v8, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iget v9, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    if-eqz v3, :cond_f8

    const/16 v8, 0x14

    :goto_cb
    invoke-static {v9, v8}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v8, v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v8

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4f

    if-eqz v3, :cond_fb

    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    const/4 v9, 0x1

    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    :goto_ea
    iget v9, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eqz v3, :cond_107

    const/16 v8, -0x14

    :goto_f0
    invoke-static {v9, v8}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto/16 :goto_4f

    :cond_f8
    const/16 v8, -0xa

    goto :goto_cb

    :cond_fb
    iget v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    const/4 v9, 0x1

    invoke-static {v8, v2, v9, v10, v11}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v8

    iput v8, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    goto :goto_ea

    :cond_107
    const/16 v8, 0xa

    goto :goto_f0
.end method

.method private findReplyAction()Landroid/app/Notification$Action;
    .registers 7

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v3, :cond_20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return-object v0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    return-object v5
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZZ)Landroid/widget/RemoteViews;
    .registers 15

    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_7f

    const/4 v9, 0x1

    :goto_5
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz p2, :cond_81

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v1

    :goto_13
    invoke-direct {v0, v2, v1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    if-nez v9, :cond_20

    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_20
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v1

    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    :cond_38
    if-eqz p2, :cond_c7

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_92

    if-eqz p3, :cond_8d

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColor()I

    move-result v4

    :goto_46
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x10201e1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    iget-object v8, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-static {v8}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_5e
    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x1020176

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    if-eqz v7, :cond_aa

    const/4 v1, 0x0

    aget-object v1, v7, v1

    if-eqz v1, :cond_aa

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(ILandroid/content/res/ColorStateList;)V

    :cond_7e
    :goto_7e
    return-object v0

    :cond_7f
    const/4 v9, 0x0

    goto :goto_5

    :cond_81
    if-eqz v9, :cond_88

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v1

    goto :goto_13

    :cond_88
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v1

    goto :goto_13

    :cond_8d
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColorDeEmphasized()I

    move-result v4

    goto :goto_46

    :cond_92
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_9e

    const v1, 0x10600e9

    :goto_99
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_46

    :cond_9e
    const v1, 0x10600ea

    goto :goto_99

    :cond_a2
    const/4 v1, 0x1

    new-array v7, v1, [Landroid/content/res/ColorStateList;

    invoke-direct {p0, v8, v4, v7}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_5e

    :cond_aa
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_7e

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7e

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_7e

    :cond_c7
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_e8

    xor-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e8

    const v1, 0x1020176

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_7e

    :cond_e8
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_7e

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v1, :cond_7e

    if-eqz p4, :cond_ff

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v1

    :goto_f8
    const v2, 0x1020176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_7e

    :cond_ff
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    goto :goto_f8
.end method

.method private getActionBarColor()I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    return v0
.end method

.method private getActionBarColorDeEmphasized()I
    .registers 3

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    move-result v1

    return v1
.end method

.method private getActionLayoutResource()I
    .registers 2

    const v0, 0x1090088

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .registers 2

    const v0, 0x109008b

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .registers 3

    iget-object v1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getBackgroundColor()I
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    goto :goto_d

    :cond_13
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    if-eq v0, v1, :cond_1a

    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private getBaseLayoutResource()I
    .registers 2

    const v0, 0x109009c

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .registers 2

    const v0, 0x109009d

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .registers 2

    const v0, 0x10900a0

    return v0
.end method

.method private getBigTextLayoutResource()I
    .registers 2

    const v0, 0x10900a1

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    :cond_c
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .registers 2

    const v0, 0x1090089

    return v0
.end method

.method private getInboxLayoutResource()I
    .registers 2

    const v0, 0x10900a2

    return v0
.end method

.method private getMessagingLayoutResource()I
    .registers 2

    const v0, 0x10900a4

    return v0
.end method

.method private getPrimaryHighlightColor()I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    goto :goto_a
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .registers 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v4

    :cond_9
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105010e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .registers 11

    const v6, 0x102000d

    const/4 v5, 0x0

    const-string/jumbo v4, "android.progressMax"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "android.progress"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "android.progressIndeterminate"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_4b

    if-nez v2, :cond_1f

    if-eqz v1, :cond_4b

    :cond_1f
    invoke-virtual {p2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, v6, v2, v3, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v5, 0x10600f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->color:I

    if-eqz v4, :cond_49

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    :cond_49
    const/4 v4, 0x1

    return v4

    :cond_4b
    const/16 v4, 0x8

    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return v5
.end method

.method private hasForegroundColor()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    if-eq v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .registers 9

    const/4 v4, 0x0

    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_e

    :cond_d
    return v4

    :cond_e
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    if-nez v2, :cond_15

    return v4

    :cond_15
    array-length v5, v2

    move v3, v4

    :goto_17
    if-ge v3, v5, :cond_2f

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_2a

    if-eqz v0, :cond_2c

    array-length v6, v0

    if-eqz v6, :cond_2c

    :cond_2a
    const/4 v3, 0x1

    return v3

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2f
    return v4
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .registers 4

    if-eqz p1, :cond_a

    const v0, 0x1020453

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_a
    return-void
.end method

.method private isColorized()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isLegacy()Z
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_19

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    :cond_16
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .registers 4

    if-eqz p0, :cond_c

    const-string/jumbo v0, "setExpanded"

    const v1, 0x102033a

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method private makePublicView(Z)Landroid/widget/RemoteViews;
    .registers 13

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v8, :cond_1d

    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v8, v9}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    if-eqz p1, :cond_18

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v8

    :goto_17
    return-object v8

    :cond_18
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    goto :goto_17

    :cond_1d
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iput-object v9, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8, v9}, Landroid/app/Notification;->-set5(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v9, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "android.showWhen"

    const-string/jumbo v9, "android.showWhen"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v8, "android.showChronometer"

    const-string/jumbo v9, "android.showChronometer"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v8, "android.chronometerCountDown"

    const-string/jumbo v9, "android.chronometerCountDown"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_98

    const-string/jumbo v8, "android.title"

    iget-object v9, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v10, 0x10403f0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v7

    :goto_86
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8, v2}, Landroid/app/Notification;->-set5(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v3, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iput-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v7

    :cond_98
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v7

    const-string/jumbo v8, "setExpandOnlyOnButton"

    const v9, 0x102033a

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v8, v10}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_86
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;Z)Landroid/app/Notification;
    .registers 11

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_1c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1c

    invoke-static {v4}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_1c

    return-object p0

    :cond_1c
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_75

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v5, v6, :cond_73

    const/4 v2, 0x1

    :goto_34
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_79

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v5, v6, :cond_77

    const/4 v1, 0x1

    :goto_4c
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_7d

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v5, v6, :cond_7b

    const/4 v3, 0x1

    :goto_64
    if-nez p1, :cond_7f

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_7f

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_7f

    xor-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_7f

    return-object p0

    :cond_73
    const/4 v2, 0x0

    goto :goto_34

    :cond_75
    const/4 v2, 0x0

    goto :goto_34

    :cond_77
    const/4 v1, 0x0

    goto :goto_4c

    :cond_79
    const/4 v1, 0x0

    goto :goto_4c

    :cond_7b
    const/4 v3, 0x0

    goto :goto_64

    :cond_7d
    const/4 v3, 0x0

    goto :goto_64

    :cond_7f
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    if-eqz v2, :cond_8f

    iput-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_8f
    if-eqz v1, :cond_9b

    iput-object v7, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_9b
    if-eqz v3, :cond_a7

    iput-object v7, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_a7
    if-eqz p1, :cond_c1

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.tv.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.wearable.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.car.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_c1
    return-object v0
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .registers 10

    const/4 v3, -0x1

    if-eqz p1, :cond_24

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    :cond_24
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 6

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    :goto_a
    move v1, p2

    if-eq v0, p2, :cond_18

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_16
    const/4 v0, 0x1

    goto :goto_a

    :cond_18
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V
    .registers 12

    const/4 v3, -0x1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v7

    :goto_11
    if-eqz p3, :cond_32

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v4

    :goto_17
    if-eqz v7, :cond_24

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    :cond_24
    const-string/jumbo v0, "setOriginalIconColor"

    if-eqz v7, :cond_37

    :goto_29
    const v1, 0x102033a

    invoke-virtual {p2, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void

    :cond_30
    const/4 v7, 0x1

    goto :goto_11

    :cond_32
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    move-result v4

    goto :goto_17

    :cond_37
    const/4 v4, 0x1

    goto :goto_29
.end method

.method private processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_b
    return-object p1
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .registers 8

    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.appInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3c

    const/4 v3, 0x4

    :try_start_e
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_11} :catch_18

    move-result-object v1

    :goto_12
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v3

    :catch_18
    move-exception v2

    const-string/jumbo v3, "Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApplicationInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    goto :goto_12

    :cond_3c
    move-object v1, p0

    goto :goto_12
.end method

.method private resetContentMargins(Landroid/widget/RemoteViews;)V
    .registers 4

    const/4 v1, 0x0

    const v0, 0x10202e0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    const v0, 0x1020438

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    return-void
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .registers 9

    const v6, 0x1020395

    const v5, 0x1020286

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string/jumbo v0, "setExpanded"

    const v1, 0x102033a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const v0, 0x10201af

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x10201fa

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020287

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x102045a

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x1020456

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .registers 8

    const v5, 0x1020453

    const v4, 0x1020438

    const v3, 0x1020016

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetContentMargins(Landroid/widget/RemoteViews;)V

    const v0, 0x10203b8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .registers 7

    const v4, 0x102033f

    const v3, 0x102033e

    const v0, 0x102018d

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v0, 0x102033c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x102033d

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020337

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    return-void
.end method

.method private sanitizeColor()V
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    :cond_f
    return-void
.end method

.method private setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V
    .registers 4

    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V
    .registers 4

    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private shouldTintActionButtons()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    return v0
.end method

.method private showsTimeOrChronometer()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private textColorsNeedInversion()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v2, :cond_15

    const-class v2, Landroid/app/Notification$MediaStyle;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v3}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    :cond_15
    return v1

    :cond_16
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_27

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method private updateBackgroundColor(Landroid/widget/RemoteViews;)V
    .registers 5

    const v2, 0x1020426

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "setBackgroundColor"

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_13
    return-void

    :cond_14
    const-string/jumbo v0, "setBackgroundResource"

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_13
.end method

.method private useExistingRemoteView()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .registers 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_c
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/app/Notification;->-set0(Landroid/app/Notification;J)J

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    :cond_36
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_bb

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_6f

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_95

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_95

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_95
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_bb

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_bb
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_cb

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_cb
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 4

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .registers 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.people"

    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_59

    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_56
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0

    :cond_59
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_56

    goto :goto_4b
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_12

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v1

    :cond_12
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    :cond_1f
    :goto_1f
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object v0

    :cond_23
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1f
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Z)Landroid/widget/RemoteViews;
    .registers 4

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v1

    :cond_11
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object v0

    :cond_1e
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_12

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v1

    :cond_12
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_28

    return-object v0

    :cond_1f
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_28

    return-object v2

    :cond_28
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .registers 2

    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    return v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_47

    move-object v0, v3

    :cond_2f
    :goto_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x0

    return-object v4

    :cond_47
    const-string/jumbo v4, "Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " attempting to substitute app name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' without holding perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_7b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public makeAmbientNotification()Landroid/widget/RemoteViews;
    .registers 4

    iget-object v1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->ambient(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const v2, 0x109009b

    invoke-direct {p0, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .registers 9

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v4, Landroid/app/Notification;->color:I

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v6, v4, Landroid/app/Notification;->color:I

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz p1, :cond_1c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_1c
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_30
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    const-string/jumbo v4, "setAcceptAllTouches"

    const v5, 0x102033a

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v4, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-eqz v3, :cond_4f

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_4a
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->color:I

    return-object v1

    :cond_4f
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.subText"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public makeNotificationHeader(Z)Landroid/widget/RemoteViews;
    .registers 7

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz p1, :cond_3f

    const v2, 0x109008e

    :goto_25
    invoke-direct {v1, v3, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Z)V

    if-eqz v0, :cond_43

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_3e
    return-object v1

    :cond_3f
    const v2, 0x1090098

    goto :goto_25

    :cond_43
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public makePublicAmbientNotification()Landroid/widget/RemoteViews;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method resolveAmbientColor()I
    .registers 4

    iget v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-ne v1, v2, :cond_10

    iget v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    iget v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v1

    :cond_10
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0
.end method

.method resolveContrastColor()I
    .registers 6

    const/4 v4, 0x1

    iget v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->color:I

    if-ne v2, v3, :cond_10

    iget v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    if-eq v2, v4, :cond_10

    iget v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v2

    :cond_10
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    iget v2, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    if-ne v2, v4, :cond_1f

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v3, 0x10600f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_1f
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-nez v2, :cond_3f

    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    :goto_2a
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_36

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    :cond_36
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v1

    :cond_3f
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->color:I

    iget-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v1

    goto :goto_2a
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .registers 5

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    aget-object v1, p1, v0

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .registers 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setBackgroundColorHint(I)V
    .registers 2

    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    return-void
.end method

.method public setBadgeIconType(I)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    return-object p0
.end method

.method public setColorPalette(II)V
    .registers 4

    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    iput p2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    return-void
.end method

.method public setColorized(Z)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_10
    const-string/jumbo v1, "setMinimumHeight"

    const v2, 0x102033b

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    :cond_4
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .registers 6

    if-eqz p2, :cond_a

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_9
    return-object p0

    :cond_a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_9
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set3(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .registers 3

    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set5(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-nez p2, :cond_10

    if-eqz p3, :cond_18

    :cond_10
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_18
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .registers 3

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .registers 6

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    :goto_14
    return-object p0

    :cond_15
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    goto :goto_14
.end method

.method public setRebuildStyledRemoteViews(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    return-void
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_e

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    :goto_d
    return-object p0

    :cond_e
    array-length v3, p1

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_24

    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_24
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-set6(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set7(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    :cond_16
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set9(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .registers 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_21

    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {p1}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-object p0

    :cond_22
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setTimeout(J)Landroid/app/Notification$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-set10(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-set10(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

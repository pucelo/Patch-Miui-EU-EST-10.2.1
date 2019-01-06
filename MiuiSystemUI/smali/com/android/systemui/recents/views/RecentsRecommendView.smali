.class public Lcom/android/systemui/recents/views/RecentsRecommendView;
.super Landroid/widget/LinearLayout;
.source "RecentsRecommendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static ACTION_APP_MANAGER:Ljava/lang/String;

.field private static ACTION_GARBAGE_CLEANUP:Ljava/lang/String;

.field private static ACTION_GARBAGE_DEEPCLEAN:Ljava/lang/String;

.field private static ACTION_SECURITY_SACN:Ljava/lang/String;

.field private static DATA_MARKET_REF:Ljava/lang/String;

.field private static EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

.field private static EXTRA_ENTER_WAY:Ljava/lang/String;

.field private static EXTRA_VALUE_CHANNEL:Ljava/lang/String;

.field private static GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

.field private static GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mFirstItem:Landroid/widget/LinearLayout;

.field private mFourthItem:Landroid/widget/LinearLayout;

.field private mIsGamesEnable:Z

.field private mIsMarketEnabled:Z

.field private mSecondItem:Landroid/widget/LinearLayout;

.field private mThirdItem:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "RecentsRecommendView"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "miui.intent.action.GARBAGE_CLEANUP"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_GARBAGE_CLEANUP:Ljava/lang/String;

    const-string/jumbo v0, "miui.intent.action.ANTI_VIRUS"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_SECURITY_SACN:Ljava/lang/String;

    const-string/jumbo v0, "miui.intent.action.GARBAGE_DEEPCLEAN"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_GARBAGE_DEEPCLEAN:Ljava/lang/String;

    const-string/jumbo v0, "miui.intent.action.APP_MANAGER"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_APP_MANAGER:Ljava/lang/String;

    const-string/jumbo v0, "enter_homepage_way"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

    const-string/jumbo v0, "enter_way"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_ENTER_WAY:Ljava/lang/String;

    const-string/jumbo v0, "recent_task"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    const-string/jumbo v0, "recents"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->DATA_MARKET_REF:Ljava/lang/String;

    const-string/jumbo v0, "com.xiaomi.mipicks"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.xiaomi.glgm"

    sput-object v0, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsRecommendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsRecommendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsRecommendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initItem(III)Landroid/widget/LinearLayout;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/RecentsRecommendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsRecommendView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a012c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 5

    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v2, :cond_2

    const v2, 0x7f080334

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v3, :cond_3

    const v3, 0x7f110553

    :goto_1
    const v4, 0x7f0a02ca

    invoke-direct {p0, v4, v2, v3}, Lcom/android/systemui/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    :cond_0
    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v2, :cond_4

    const v2, 0x7f08032b

    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v3, :cond_5

    const v3, 0x7f110550

    :goto_3
    const v4, 0x7f0a00e8

    invoke-direct {p0, v4, v2, v3}, Lcom/android/systemui/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f080331

    goto :goto_0

    :cond_3
    const v3, 0x7f110552

    goto :goto_1

    :cond_4
    const v2, 0x7f080328

    goto :goto_2

    :cond_5
    const v3, 0x7f11054f

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :sswitch_0
    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_GARBAGE_CLEANUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "cleaner"

    invoke-static {v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_SECURITY_SACN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "scan"

    invoke-static {v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mimarket://home?ref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/recents/views/RecentsRecommendView;->DATA_MARKET_REF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "market"

    invoke-static {v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_GARBAGE_DEEPCLEAN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_ENTER_HOMEPAGE_WAY:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "deep_clean"

    invoke-static {v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.xiaomi.glgm"

    const-string/jumbo v4, "com.xiaomi.glgm.home.ui.SplashActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "game"

    invoke-static {v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->ACTION_APP_MANAGER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_ENTER_WAY:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/recents/views/RecentsRecommendView;->EXTRA_VALUE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "manager_app"

    invoke-static {v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendClickRecommendCardEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/systemui/recents/views/RecentsRecommendView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start activity error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f0a00da -> :sswitch_0
        0x7f0a00e8 -> :sswitch_3
        0x7f0a0280 -> :sswitch_1
        0x7f0a02ca -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/recents/views/RecentsRecommendView;->GLOBAL_GAME_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    const v0, 0x7f0a00da

    const v1, 0x7f08032e

    const v2, 0x7f110551

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0280

    const v1, 0x7f080337

    const v2, 0x7f110554

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080334

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsMarketEnabled:Z

    if-eqz v1, :cond_1

    const v1, 0x7f110553

    :goto_1
    const v2, 0x7f0a02ca

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v0, :cond_2

    const v0, 0x7f08032b

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mIsGamesEnable:Z

    if-eqz v1, :cond_3

    const v1, 0x7f110550

    :goto_3
    const v2, 0x7f0a00e8

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/recents/views/RecentsRecommendView;->initItem(III)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    return-void

    :cond_0
    const v0, 0x7f080331

    goto :goto_0

    :cond_1
    const v1, 0x7f110552

    goto :goto_1

    :cond_2
    const v0, 0x7f080328

    goto :goto_2

    :cond_3
    const v1, 0x7f11054f

    goto :goto_3
.end method

.method public setAllItemClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mFirstItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mSecondItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mThirdItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRecommendView;->mFourthItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_3
    return-void
.end method

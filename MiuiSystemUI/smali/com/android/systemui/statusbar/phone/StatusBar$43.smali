.class Lcom/android/systemui/statusbar/phone/StatusBar$43;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0a01e6

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set15(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0a00c0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set4(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setHandler(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get15(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToDriveModeView(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get4(Lcom/android/systemui/statusbar/phone/StatusBar;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get30(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/database/ContentObserver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarFragment:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->setNotch()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap31(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarPading()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get26(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->setStatusBarView(Landroid/view/View;)V

    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

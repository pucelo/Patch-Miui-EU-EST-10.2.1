.class Lcom/android/systemui/statusbar/phone/StatusBar$47;
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

.field final synthetic val$qsCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field final synthetic val$qsDetail:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$qsh:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->val$qsDetail:Lcom/android/systemui/qs/QSDetail;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->val$qsCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->val$qsh:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    instance-of v2, v0, Lcom/android/systemui/qs/QSFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/QSFragment;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->val$qsDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSFragment;->setQSDetail(Lcom/android/systemui/qs/QSDetail;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->val$qsCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSFragment;->setQSCustomizer(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->val$qsh:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSFragment;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment;->getHeaderView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/HeaderView;

    iput-object v2, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/HeaderView;->themeChanged()V

    :cond_0
    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

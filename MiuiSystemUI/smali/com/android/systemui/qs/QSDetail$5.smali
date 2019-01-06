.class Lcom/android/systemui/qs/QSDetail$5;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field final synthetic val$settingsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail$5;->val$settingsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get0(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x3a1

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->val$settingsIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

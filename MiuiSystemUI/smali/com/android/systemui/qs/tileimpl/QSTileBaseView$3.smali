.class Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;
.super Ljava/lang/Object;
.source "QSTileBaseView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

.field final synthetic val$tile:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick()V

    const/4 v0, 0x1

    return v0
.end method

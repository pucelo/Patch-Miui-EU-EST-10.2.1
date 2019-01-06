.class Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;
.super Ljava/lang/Object;
.source "FoldHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->-get0(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->-get0(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;->onClickTips()V

    :cond_0
    return-void
.end method

.class Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;
.super Ljava/lang/Object;
.source "FoldFooterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setActualHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->-wrap0(Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;)V

    return-void
.end method

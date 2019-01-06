.class Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;
.super Ljava/lang/Object;
.source "FoldHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->update()V
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

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setActualHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;->this$0:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->-wrap0(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V

    return-void
.end method

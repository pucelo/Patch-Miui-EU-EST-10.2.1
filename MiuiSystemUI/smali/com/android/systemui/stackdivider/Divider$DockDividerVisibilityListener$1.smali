.class Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->onAdjustedForImeChanged(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field final synthetic val$adjustedForIme:Z

.field final synthetic val$animDuration:J


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;ZJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$adjustedForIme:Z

    iput-wide p3, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$animDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get0(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$adjustedForIme:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$adjustedForIme:Z

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->-set0(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-wrap2(Lcom/android/systemui/stackdivider/Divider;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$animDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$adjustedForIme:Z

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$animDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$1;->val$adjustedForIme:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(Z)V

    goto :goto_0
.end method

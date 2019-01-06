.class Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$2;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->onDockSideChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field final synthetic val$newDockSide:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$2;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iput p2, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$2;->val$newDockSide:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$2;->this$1:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener$2;->val$newDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->notifyDockSideChanged(I)V

    return-void
.end method

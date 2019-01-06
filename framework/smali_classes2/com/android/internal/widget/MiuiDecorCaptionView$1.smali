.class Lcom/android/internal/widget/MiuiDecorCaptionView$1;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {p2}, Lcom/miui/freeform/IMiuiFreeformWindowService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-set0(Lcom/android/internal/widget/MiuiDecorCaptionView;Lcom/miui/freeform/IMiuiFreeformWindowService;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-set0(Lcom/android/internal/widget/MiuiDecorCaptionView;Lcom/miui/freeform/IMiuiFreeformWindowService;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    return-void
.end method

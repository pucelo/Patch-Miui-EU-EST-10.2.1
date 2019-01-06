.class Lcom/android/systemui/recents/views/RecentsView$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2, v3}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

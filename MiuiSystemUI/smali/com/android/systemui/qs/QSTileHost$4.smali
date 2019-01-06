.class Lcom/android/systemui/qs/QSTileHost$4;
.super Landroid/database/ContentObserver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$4;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iput-object p3, p0, Lcom/android/systemui/qs/QSTileHost$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$4;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$4;->val$context:Landroid/content/Context;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClickedForUser(Landroid/content/Context;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->-set0(Lcom/android/systemui/qs/QSTileHost;Z)Z

    return-void
.end method

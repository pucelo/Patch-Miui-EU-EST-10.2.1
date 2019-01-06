.class Lcom/android/systemui/qs/QSTileHost$2;
.super Landroid/content/BroadcastReceiver;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const/4 v1, -0x2

    invoke-static {p1, v1}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClickedForUser(Landroid/content/Context;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->-set0(Lcom/android/systemui/qs/QSTileHost;Z)Z

    return-void
.end method

.class Lcom/android/systemui/qs/QSTileHost$3;
.super Ljava/lang/Thread;
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

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost$3;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v3}, Lcom/android/systemui/qs/QSTileHost;->-get1(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.xiaomi.drivemode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/systemui/qs/QSTileHost;->-set1(Lcom/android/systemui/qs/QSTileHost;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

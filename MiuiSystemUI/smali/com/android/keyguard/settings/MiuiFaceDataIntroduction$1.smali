.class Lcom/android/keyguard/settings/MiuiFaceDataIntroduction$1;
.super Ljava/lang/Object;
.source "MiuiFaceDataIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "face_unlock_click_introduction"

    invoke-static {v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.MiuiSecurityChooseUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "add_keyguard_password_then_add_face_recoginition"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;

    invoke-virtual {v1, v0, v3}, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

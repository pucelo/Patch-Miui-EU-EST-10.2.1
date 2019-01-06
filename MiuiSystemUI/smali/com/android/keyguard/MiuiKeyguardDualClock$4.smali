.class Lcom/android/keyguard/MiuiKeyguardDualClock$4;
.super Landroid/os/AsyncTask;
.source "MiuiKeyguardDualClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardDualClock;->updateLocalCity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardDualClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-get0(Lcom/android/keyguard/MiuiKeyguardDualClock;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://weather/actualWeatherData/1/1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "city_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "miui_keyguard"

    const-string/jumbo v1, "get city exception"

    invoke-static {v0, v1, v8}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-get1(Lcom/android/keyguard/MiuiKeyguardDualClock;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-get1(Lcom/android/keyguard/MiuiKeyguardDualClock;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-get0(Lcom/android/keyguard/MiuiKeyguardDualClock;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1101bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

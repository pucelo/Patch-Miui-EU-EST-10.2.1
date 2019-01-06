.class Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;
.super Landroid/os/AsyncTask;
.source "LockScreenMagazinePreGlobalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->reportEvent(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$eventCode:I

.field final synthetic val$lockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->val$lockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iput p3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->val$eventCode:I

    iput-object p4, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "wallpaperId"

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->val$lockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v5, v5, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "eventCode"

    iget v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->val$eventCode:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "request_json"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->val$lockScreenMagazineWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    iget-object v5, v5, Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$3;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "threadRecordEvent"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->mCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIntValueByKey(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "face_unlock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getStringValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->mCtx:Landroid/content/Context;

    const-string/jumbo v2, "face_unlock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public saveIntValue(Ljava/lang/String;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->mCtx:Landroid/content/Context;

    const-string/jumbo v3, "face_unlock"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->mCtx:Landroid/content/Context;

    const-string/jumbo v3, "face_unlock"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

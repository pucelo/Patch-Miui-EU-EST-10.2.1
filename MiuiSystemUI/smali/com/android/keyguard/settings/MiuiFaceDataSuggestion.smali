.class public Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiFaceDataSuggestion.java"


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->setContentView(I)V

    const v0, 0x7f0a019c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;JJLandroid/widget/Button;)V

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

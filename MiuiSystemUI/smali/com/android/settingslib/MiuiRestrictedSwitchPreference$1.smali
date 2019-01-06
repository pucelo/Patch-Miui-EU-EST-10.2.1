.class Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;
.super Ljava/lang/Object;
.source "MiuiRestrictedSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/MiuiRestrictedSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

.field final synthetic val$switchWidget:Lmiui/widget/SlidingButton;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settingslib/MiuiRestrictedSwitchPreference;Landroid/view/View;Lmiui/widget/SlidingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->this$0:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    iput-object p2, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->val$switchWidget:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->this$0:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->this$0:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    iget-object v1, v1, Lcom/android/settingslib/MiuiRestrictedSwitchPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/MiuiRestrictedSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->this$0:Lcom/android/settingslib/MiuiRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/MiuiRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/MiuiRestrictedSwitchPreference$1;->val$switchWidget:Lmiui/widget/SlidingButton;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

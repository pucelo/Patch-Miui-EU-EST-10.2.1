.class public Landroid/preference/MyLaunchPreference;
.super Landroid/preference/DialogPreference;
.source "MyLaunchPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private lvDetail:Landroid/widget/ListView;

.field private mIcon:Landroid/widget/ImageView;

.field private mLoadApps:Landroid/preference/MyLaunchPreference$LoadApps;

.field private mMyPreference:Landroid/preference/MyPreference;

.field private mProgressContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MyPreference;

    invoke-direct {v0, p1, p2}, Landroid/preference/MyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/preference/MyLaunchPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "list_content"

    const-string v2, "layout"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/MyLaunchPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$1(Landroid/preference/MyLaunchPreference;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/preference/MyLaunchPreference;->lvDetail:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Landroid/preference/MyLaunchPreference;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Landroid/preference/MyLaunchPreference;->mProgressContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Landroid/preference/MyLaunchPreference;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, ""

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    return-object v1
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .registers 3

    invoke-virtual {p0}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/MyCheckBoxPreference;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/preference/MyCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/MyCheckBoxPreference;->registerDependent(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "list"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/preference/MyLaunchPreference;->lvDetail:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    const-string v1, "list_divider_holo_light"

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Landroid/preference/MyLaunchPreference;->lvDetail:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const-string v2, "id"

    const-string v1, "progressContainer"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v1, p0, Landroid/preference/MyLaunchPreference;->mProgressContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v0, 0x40

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    new-instance v0, Landroid/preference/MyLaunchPreference$LoadApps;

    invoke-direct {v0, p0}, Landroid/preference/MyLaunchPreference$LoadApps;-><init>(Landroid/preference/MyLaunchPreference;)V

    iput-object v0, p0, Landroid/preference/MyLaunchPreference;->mLoadApps:Landroid/preference/MyLaunchPreference$LoadApps;

    invoke-virtual {v0, v1}, Landroid/preference/MyLaunchPreference$LoadApps;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/preference/MyLaunchPreference;->mMyPreference:Landroid/preference/MyPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/MyPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq v2, v3, :cond_2f

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v1, 0x80

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v1, p0, Landroid/preference/MyLaunchPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    invoke-virtual {p0, v2}, Landroid/preference/MyLaunchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/preference/MyLaunchPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v2, p1, v0}, Landroid/preference/MyPreference;->setMargin(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/preference/MyLaunchPreference;->mMyPreference:Landroid/preference/MyPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v2, v3}, Landroid/preference/MyPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq v2, v3, :cond_21

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v1, 0x80

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_21
    invoke-virtual {p0, v2}, Landroid/preference/MyLaunchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/preference/MyLaunchPreference;->mIcon:Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x74

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Landroid/preference/MyLaunchPreference;->mLoadApps:Landroid/preference/MyLaunchPreference$LoadApps;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/preference/MyLaunchPreference$LoadApps;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Landroid/preference/MyLaunchPreference;->mLoadApps:Landroid/preference/MyLaunchPreference$LoadApps;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/MyLaunchPreference$LoadApps;->cancel(Z)Z

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/MyLaunchPreference;->mLoadApps:Landroid/preference/MyLaunchPreference$LoadApps;

    :cond_15
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MyLaunchPreference$AppData;

    iget-object v1, v0, Landroid/preference/MyLaunchPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/MyLaunchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/preference/MyLaunchPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/preference/MyLaunchPreference;->mMyPreference:Landroid/preference/MyPreference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/MyPreference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/MyPreference;->sendIntent(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/MyLaunchPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

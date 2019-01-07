.class Landroid/preference/MyLaunchPreference$LoadApps;
.super Landroid/os/AsyncTask;
.source "MyLaunchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MyLaunchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadApps"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MyLaunchPreference;


# direct methods
.method synthetic constructor <init>(Landroid/preference/MyLaunchPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/MyLaunchPreference$LoadApps;->this$0:Landroid/preference/MyLaunchPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/preference/MyLaunchPreference$LoadApps;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/preference/MyLaunchPreference$LoadApps;->this$0:Landroid/preference/MyLaunchPreference;

    invoke-virtual {v1}, Landroid/preference/MyLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v4, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/preference/MyLaunchPreference$AppData;

    invoke-direct {v4}, Landroid/preference/MyLaunchPreference$AppData;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, v4, Landroid/preference/MyLaunchPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/preference/MyLaunchPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v4, Landroid/preference/MyLaunchPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_4f
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/preference/MyLaunchPreference$LoadApps;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/preference/MyLaunchPreference$LoadApps;->this$0:Landroid/preference/MyLaunchPreference;

    # getter for: Landroid/preference/MyLaunchPreference;->mProgressContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Landroid/preference/MyLaunchPreference;->access$2(Landroid/preference/MyLaunchPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v0}, Landroid/preference/MyLaunchPreference;->access$3(Landroid/preference/MyLaunchPreference;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/preference/MyLaunchPreference$AppData;

    invoke-direct {v3}, Landroid/preference/MyLaunchPreference$AppData;-><init>()V

    iput-object v1, v3, Landroid/preference/MyLaunchPreference$AppData;->name:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    # getter for: Landroid/preference/MyLaunchPreference;->lvDetail:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/preference/MyLaunchPreference;->access$1(Landroid/preference/MyLaunchPreference;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v1, Landroid/preference/MyLaunchPreference$Adapter;

    invoke-direct {v1, v0, v3, p1}, Landroid/preference/MyLaunchPreference$Adapter;-><init>(Landroid/preference/MyLaunchPreference;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

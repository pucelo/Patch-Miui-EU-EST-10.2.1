.class Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;
.super Landroid/os/AsyncTask;
.source "UserInfoControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->queryForUserInformation()V
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
        "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field final synthetic val$avatarSize:I

.field final synthetic val$isGuest:Z

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;
    .locals 10

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    const/4 v0, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v6, Lcom/android/settingslib/drawable/UserIconDrawable;

    iget v7, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    invoke-direct {v6, v7}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {v6, v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-static {v4, v6}, Landroid/os/UserManagerCompat;->getUserAccount(Landroid/os/UserManager;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    invoke-direct {v6, v2, v0, v5}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    if-eqz v6, :cond_2

    const/16 v6, -0x2710

    :goto_1
    invoke-static {v7, v6, v9}, Lcom/android/internal/util/UserIconsCompat;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-set3(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getUserAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-set2(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->onPostExecute(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;)V

    return-void
.end method

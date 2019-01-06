.class Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lmiui/maml/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

.field private mSrc:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/ResourceManager;


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceManager;Lmiui/maml/ResourceManager$AsyncLoadListener;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->doInBackground([Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    iget-object v1, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/maml/ResourceManager;->-wrap0(Lmiui/maml/ResourceManager;Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->onPostExecute(Lmiui/maml/ResourceManager$BitmapInfo;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/maml/ResourceManager$BitmapInfo;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    invoke-static {v0}, Lmiui/maml/ResourceManager;->-get0(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    iget-object v2, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lmiui/maml/ResourceManager$AsyncLoadListener;->onLoadComplete(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)V

    iget-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    invoke-static {v0}, Lmiui/maml/ResourceManager;->-get0(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

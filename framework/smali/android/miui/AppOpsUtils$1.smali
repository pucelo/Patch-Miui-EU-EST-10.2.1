.class final Landroid/miui/AppOpsUtils$1;
.super Landroid/os/AsyncTask;
.source "AppOpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mode:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .registers 4

    iput p1, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    iput-object p2, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/miui/AppOpsUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    iget v3, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    packed-switch v3, :pswitch_data_54

    :goto_d
    :pswitch_d
    const-wide/32 v4, 0x8000

    const-string/jumbo v3, "extra_permission"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "extra_action"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "extra_package"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v3, "extra_flags"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_2f
    iget-object v3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/miui/AppOpsUtils;->-get0()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_42} :catch_49

    :goto_42
    return-object v9

    :pswitch_43
    const/4 v0, 0x3

    goto :goto_d

    :pswitch_45
    const/4 v0, 0x2

    goto :goto_d

    :pswitch_47
    const/4 v0, 0x1

    goto :goto_d

    :catch_49
    move-exception v1

    const-string/jumbo v3, "AppOpsUtils"

    const-string/jumbo v6, "SET_APPLICATION_PERMISSION : "

    invoke-static {v3, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_43
        :pswitch_47
        :pswitch_47
        :pswitch_d
        :pswitch_45
    .end packed-switch
.end method

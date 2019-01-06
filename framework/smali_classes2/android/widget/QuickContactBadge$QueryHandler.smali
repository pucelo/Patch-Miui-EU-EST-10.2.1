.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 19

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_41

    move-object/from16 v5, p2

    check-cast v5, Landroid/os/Bundle;

    :goto_9
    packed-switch p1, :pswitch_data_c6

    :cond_c
    :goto_c
    if-eqz p3, :cond_11

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_11
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v10, v8}, Landroid/widget/QuickContactBadge;->-set0(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v10}, Landroid/widget/QuickContactBadge;->-wrap0(Landroid/widget/QuickContactBadge;)V

    if-eqz v9, :cond_a5

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v10}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_a5

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v12}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v13, v13, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v14, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v14}, Landroid/widget/QuickContactBadge;->-get1(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    goto :goto_9

    :pswitch_47
    const/4 v9, 0x1

    :try_start_48
    const-string/jumbo v10, "tel"

    const-string/jumbo v11, "uri_content"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :pswitch_57
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_c

    :pswitch_72
    const/4 v9, 0x1

    const-string/jumbo v10, "mailto"

    const-string/jumbo v11, "uri_content"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :pswitch_82
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_9b
    .catchall {:try_start_48 .. :try_end_9b} :catchall_9e

    move-result-object v8

    goto/16 :goto_c

    :catchall_9e
    move-exception v10

    if-eqz p3, :cond_a4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw v10

    :cond_a5
    if-eqz v4, :cond_40

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v6, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v5, :cond_ba

    const-string/jumbo v10, "uri_content"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_ba
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_40

    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_82
        :pswitch_57
        :pswitch_72
        :pswitch_47
    .end packed-switch
.end method

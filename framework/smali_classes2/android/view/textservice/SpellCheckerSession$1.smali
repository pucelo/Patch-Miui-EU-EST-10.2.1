.class Landroid/view/textservice/SpellCheckerSession$1;
.super Landroid/os/Handler;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/textservice/SpellCheckerSession;


# direct methods
.method constructor <init>(Landroid/view/textservice/SpellCheckerSession;)V
    .registers 2

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$1;->this$0:Landroid/view/textservice/SpellCheckerSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$1;->this$0:Landroid/view/textservice/SpellCheckerSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/textservice/SuggestionsInfo;

    invoke-static {v1, v0}, Landroid/view/textservice/SpellCheckerSession;->-wrap1(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V

    goto :goto_5

    :pswitch_10
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$1;->this$0:Landroid/view/textservice/SpellCheckerSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-static {v1, v0}, Landroid/view/textservice/SpellCheckerSession;->-wrap0(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V

    goto :goto_5

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field mConversationTitle:Ljava/lang/CharSequence;

.field mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mUserDisplayName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    return-void
.end method

.method private findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .registers 5

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_20

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    return-object v2

    :cond_39
    const/4 v2, 0x0

    return-object v2
.end method

.method private fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .registers 11

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    if-nez v1, :cond_51

    const/4 v3, 0x0

    :goto_7
    if-nez v1, :cond_56

    const/4 v2, 0x0

    :goto_a
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_68

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10403f3

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_40
    if-eqz v4, :cond_48

    const-string/jumbo v5, "android.title"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_48
    if-eqz v3, :cond_50

    const-string/jumbo v5, "android.text"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_50
    return-void

    :cond_51
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    :cond_56
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_63

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_63
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_a

    :cond_68
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    goto :goto_40

    :cond_6b
    move-object v4, v2

    goto :goto_40
.end method

.method private static makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .registers 11

    const/4 v7, 0x0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {p2}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)Z

    move-result v1

    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_52

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-nez v5, :cond_48

    const-string/jumbo v2, ""

    :goto_1f
    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v1, :cond_4b

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v5

    :goto_29
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v5

    invoke-virtual {v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :goto_30
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_6b

    const-string/jumbo v4, ""

    :goto_39
    const-string/jumbo v5, "  "

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3

    :cond_48
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    goto :goto_1f

    :cond_4b
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v5

    goto :goto_29

    :cond_52
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v1, :cond_68

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v5

    :goto_60
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v5

    invoke-virtual {v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_30

    :cond_68
    const/high16 v5, -0x1000000

    goto :goto_60

    :cond_6b
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_39
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    const-string/jumbo v0, "android.selfDisplayName"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1b
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "android.messages"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2f
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    const-string/jumbo v0, "android.messages.historic"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_43
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_15

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_15
    return-object p0
.end method

.method public addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 4

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_15

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_15
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 7

    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHistoricMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .registers 19

    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_71

    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v13

    :goto_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/lit8 v7, v14, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_95

    if-eqz v7, :cond_76

    move-object v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Notification$MessagingStyle$Message;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v12

    :goto_37
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v15}, Landroid/app/Notification$Builder;->-wrap11(Landroid/app/Notification$Builder;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14, v2, v12}, Landroid/app/Notification$BigTextStyle;->applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    return-object v2

    :cond_71
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_76
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v14}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v14}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_37

    :cond_95
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v15}, Landroid/app/Notification$Builder;->-wrap13(Landroid/app/Notification$Builder;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v14, 0x7

    new-array v11, v14, [I

    fill-array-data v11, :array_1c4

    const/4 v14, 0x0

    array-length v15, v11

    :goto_cf
    if-ge v14, v15, :cond_dd

    aget v10, v11, v14

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v2, v10, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_cf

    :cond_dd
    const/4 v8, 0x0

    if-eqz v7, :cond_153

    const v14, 0x105013b

    :goto_e3
    const v15, 0x10202e0

    invoke-virtual {v2, v15, v14}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    const-string/jumbo v15, "setNumIndentLines"

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v14

    invoke-static {v14}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v14

    if-nez v14, :cond_155

    const/4 v14, 0x0

    :goto_fb
    const v16, 0x1020340

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 v3, -0x1

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    array-length v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    sub-int v15, v15, v16

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_123
    add-int v14, v5, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_15b

    array-length v14, v11

    if-ge v8, v14, :cond_15b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    add-int v15, v5, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    aget v10, v11, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-ne v4, v9, :cond_150

    move v3, v10

    :cond_150
    add-int/lit8 v8, v8, 0x1

    goto :goto_123

    :cond_153
    const/4 v14, 0x0

    goto :goto_e3

    :cond_155
    if-eqz v7, :cond_159

    const/4 v14, 0x1

    goto :goto_fb

    :cond_159
    const/4 v14, 0x2

    goto :goto_fb

    :cond_15b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    array-length v15, v11

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_16a
    add-int v14, v6, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_1ad

    array-length v14, v11

    if-ge v8, v14, :cond_1ad

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    add-int v15, v6, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    aget v10, v11, v8

    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/app/Notification$Builder;->-wrap17(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14, v2, v10}, Landroid/app/Notification$Builder;->-wrap18(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V

    if-ne v4, v9, :cond_1aa

    move v3, v10

    :cond_1aa
    add-int/lit8 v8, v8, 0x1

    goto :goto_16a

    :cond_1ad
    :goto_1ad
    array-length v14, v11

    if-ge v8, v14, :cond_1b9

    aget v10, v11, v8

    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1ad

    :cond_1b9
    const-string/jumbo v14, "setContractedChildId"

    const v15, 0x1020340

    invoke-virtual {v2, v15, v14, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object v2

    nop

    :array_1c4
    .array-data 4
        0x10202a4
        0x10202a5
        0x10202a6
        0x10202a7
        0x10202a8
        0x10202a9
        0x10202aa
    .end array-data
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .registers 10

    const/4 v6, 0x0

    if-nez p1, :cond_4b

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_32

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_d
    if-nez v0, :cond_3b

    const/4 v2, 0x0

    :goto_10
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v6, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v6}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v4

    return-object v4

    :cond_32
    if-nez v0, :cond_36

    const/4 v3, 0x0

    goto :goto_d

    :cond_36
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_d

    :cond_3b
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_46

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v0, v4}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_10

    :cond_46
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_10

    :cond_4b
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->-set1(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v6}, Landroid/app/Notification$Builder;->-set1(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 9

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3

    :cond_7
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_36

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_11
    if-nez v0, :cond_3f

    const/4 v1, 0x0

    :goto_14
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-wrap9(Landroid/app/Notification$Builder;)I

    move-result v4

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, v5, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3

    :cond_36
    if-nez v0, :cond_3a

    const/4 v2, 0x0

    goto :goto_11

    :cond_3a
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_11

    :cond_3f
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v0, v3}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_14

    :cond_4a
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_14
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string/jumbo v2, "android.selfDisplayName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    const-string/jumbo v2, "android.conversationTitle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    const-string/jumbo v2, "android.messages"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_32

    instance-of v2, v1, [Landroid/os/Parcelable;

    if-eqz v2, :cond_32

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    :cond_32
    const-string/jumbo v2, "android.messages.historic"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_45

    instance-of v2, v0, [Landroid/os/Parcelable;

    if-eqz v2, :cond_45

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    :cond_45
    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
